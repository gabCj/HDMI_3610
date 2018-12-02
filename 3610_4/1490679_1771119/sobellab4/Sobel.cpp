#include "Sobel.h"
#include <string.h>

#define ABS(x)          ((x>0)? x : -x)

typedef union {
	uint8_t pix[4];
	unsigned full;
} OneToFourPixels;

static inline uint8_t getVal(int index, int xDiff, int yDiff, int img_width, uint8_t * Y)
{
	int fullIndex = (index + (yDiff * img_width)) + xDiff;
	if (fullIndex < 0)
	{
		//Cas ou on doit chercher la derniere ligne
		fullIndex += img_width * 4;
	}
	else if (fullIndex >= img_width * 4)
	{
		//Cas ou on doit aller chercher la premiere ligne
		fullIndex -= img_width * 4;
	}

	return Y[fullIndex];

	//return Y[index + (yDiff * img_width) + xDiff];
};

uint8_t sobel_operator(const int fullIndex, uint8_t * image)
{
#pragma HLS inline			// Inliner la fonction lui permet d'�tre "copi�e-coll�e" l� o� elle est appell�e
							// et ainsi faciliter le pipelinage de la boucle principale
	/* � compl�ter en important votre code du lab 3.
	 * � noter que la fonction peut avoir 3 signatures diff�rentes, selon vos diff�rentes modifications:
	 * uint8_t sobel_operator(const int fullIndex, uint8_t * image)
	 * uint8_t sobel_operator(const int fullIndex, uint8_t image[IMG_HEIGHT * IMG_WIDTH])
	 * uint8_t sobel_operator(const int col, const int row, uint8_t image[IMG_HEIGHT][IMG_WIDTH])
	 *
	 * Les deux premi�res sont assez �quivalentes, mais la derni�re permet d'acc�der � l'image comme un
	 * tableau 2D. Par contre, un tableau 2D doit alors lui �tre pass�, ce qui n'est pas �vident consid�rant
	 * que les entr�es de la fonction sobel_filtrer() sont 1D. Cependant, si pour une raison ou une autre
	 * un buffer-cache interm�diaire �tait utilis�, celui-ci pourrait �tre 2D...
	 */

	int x_weightA[9];
#pragma HLS ARRAY_PARTITION variable=x_weightA complete
	int y_weightA[9];
#pragma HLS ARRAY_PARTITION variable=y_weightA complete

	unsigned edge_weight;
	uint8_t edge_val;

	const char x_op[3][3] = {	{ -1,0,1 },
								{ -2,0,2 },
								{ -1,0,1 } };
#pragma HLS ARRAY_PARTITION variable=x_op complete dim=0

	const char y_op[3][3] = {	{ 1,2,1 },
								{ 0,0,0 },
								{ -1,-2,-1 } };
#pragma HLS ARRAY_PARTITION variable=y_op complete dim=0


	//Compute approximation of the gradients in the X-Y direction
	for (int i = 0; i < 3; i++) {
#pragma HLS unroll
		for (int j = 0; j < 3; j++) {
		// X direction gradient
		x_weightA[i*2 + j] = (getVal(fullIndex, i - 1, j - 1, IMG_WIDTH, image) * x_op[i][j]);

		// Y direction gradient
		y_weightA[i*2 + j] = (getVal(fullIndex, i - 1, j - 1, IMG_WIDTH, image) * y_op[i][j]);
		}
	}

	int x_weight = 0;
	int y_weight = 0;
	for (int i = 0; i < 9; i++) {
#pragma HLS pipeline
		x_weight = x_weight + x_weightA[i];
		y_weight = y_weight + y_weightA[i];
	}

	edge_weight = ABS(x_weight) + ABS(y_weight);

	edge_val = (255 - (uint8_t)(edge_weight));

	//Edge thresholding
	if (edge_val > 200)
		edge_val = 255;
	else if (edge_val < 100)
		edge_val = 0;

	return edge_val;
}


void sobel_filter(uint8_t inter_pix[IMG_WIDTH * IMG_HEIGHT], unsigned out_pix[IMG_WIDTH * IMG_HEIGHT])
{
#pragma HLS INTERFACE m_axi port=inter_pix offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=out_pix offset=slave bundle=gmem1
#pragma HLS INTERFACE s_axilite port=return


	uint8_t cache1[4*IMG_WIDTH];
	uint8_t val;
	OneToFourPixels fourWide;
	uint8_t surroundingPix[9];
#pragma HLS array_partition variable=surroundingPix complete
/*
	OperatorLines: for (unsigned int i = 0; i < IMG_HEIGHT + 1; ++i) {
			OperatorRows: for (unsigned int j = 0; j < IMG_WIDTH; ++j) {
	#pragma HLS pipeline II=10
	#pragma HLS loop_flatten off
				if (i < 3) {
					cache1[i*IMG_WIDTH + j] = inter_pix[i*IMG_WIDTH + j];
				}
				else if (i >= 3 && i < IMG_HEIGHT) {
					cache1[(i%4)*IMG_WIDTH + j] = inter_pix[i*IMG_WIDTH + j];


					if (j == 0 || j == IMG_WIDTH - 1 || i - 2 == 0) {
						val = 0;
					}
					else {
						surroundingPix[0] = cache1[((i-3)%4)*IMG_WIDTH + (j-1)];
						surroundingPix[1] = cache1[((i-3)%4)*IMG_WIDTH + (j)];
						surroundingPix[2] = cache1[((i-3)%4)*IMG_WIDTH + (j+1)];
						surroundingPix[3] = cache1[((i-2)%4)*IMG_WIDTH + (j-1)];
						surroundingPix[4] = cache1[((i-2)%4)*IMG_WIDTH + (j)];
						surroundingPix[5] = cache1[((i-2)%4)*IMG_WIDTH + (j+1)];
						surroundingPix[6] = cache1[((i-1)%4)*IMG_WIDTH + (j-1)];
						surroundingPix[7] = cache1[((i-1)%4)*IMG_WIDTH + (j)];
						surroundingPix[8] = cache1[((i-1)%4)*IMG_WIDTH + (j+1)];

						val = sobel_operator(4, surroundingPix);
					}
					for (int j = 0; j < 4; ++j)
						fourWide.pix[j] = val;
					out_pix[(i-2)*IMG_WIDTH + j] = fourWide.full;


				}
				else {

					if (j == 0 || j == IMG_WIDTH - 1 || i - 2 == IMG_HEIGHT - 1) {
						val = 0;
					}
					else {
						surroundingPix[0] = cache1[((i-3)%4)*IMG_WIDTH + (j-1)];
						surroundingPix[1] = cache1[((i-3)%4)*IMG_WIDTH + (j)];
						surroundingPix[2] = cache1[((i-3)%4)*IMG_WIDTH + (j+1)];
						surroundingPix[3] = cache1[((i-2)%4)*IMG_WIDTH + (j-1)];
						surroundingPix[4] = cache1[((i-2)%4)*IMG_WIDTH + (j)];
						surroundingPix[5] = cache1[((i-2)%4)*IMG_WIDTH + (j+1)];
						surroundingPix[6] = cache1[((i-1)%4)*IMG_WIDTH + (j-1)];
						surroundingPix[7] = cache1[((i-1)%4)*IMG_WIDTH + (j)];
						surroundingPix[8] = cache1[((i-1)%4)*IMG_WIDTH + (j+1)];

						val = sobel_operator(4, surroundingPix);
					}
					for (int j = 0; j < 4; ++j)
						fourWide.pix[j] = val;
					out_pix[(i-2)*IMG_WIDTH + j] = fourWide.full;

				}
			}
		}*/

  OperatorLines: for (unsigned int i = 0; i < IMG_HEIGHT; ++i) {
			OperatorRows: for (unsigned int j = 0; j < IMG_WIDTH; ++j) {
	#pragma HLS pipeline II=2
	#pragma HLS loop_flatten off
				cache1[(i%4)*IMG_WIDTH + j] = inter_pix[i*IMG_WIDTH + j];


				if (j == 0 || j == IMG_WIDTH - 1 || i - 2 == 0) {
					val = 0;
				}
				else {
						surroundingPix[0] = cache1[((i-3)%4)*IMG_WIDTH + (j-1)];
						surroundingPix[1] = cache1[((i-3)%4)*IMG_WIDTH + (j)];
						surroundingPix[2] = cache1[((i-3)%4)*IMG_WIDTH + (j+1)];
						surroundingPix[3] = cache1[((i-2)%4)*IMG_WIDTH + (j-1)];
						surroundingPix[4] = cache1[((i-2)%4)*IMG_WIDTH + (j)];
						surroundingPix[5] = cache1[((i-2)%4)*IMG_WIDTH + (j+1)];
						surroundingPix[6] = cache1[((i-1)%4)*IMG_WIDTH + (j-1)];
						surroundingPix[7] = cache1[((i-1)%4)*IMG_WIDTH + (j)];
						surroundingPix[8] = cache1[((i-1)%4)*IMG_WIDTH + (j+1)];

						val = sobel_operator(4, surroundingPix);
				}
				for (int j = 0; j < 4; ++j)
					fourWide.pix[j] = val;
				out_pix[(i-2)*IMG_WIDTH + j] = fourWide.full;


				}
			}

	lastLines: for (unsigned int i = 0; i < 3; ++i) {
		lastPixels: for (unsigned int j = 0; j < IMG_WIDTH; ++j) {
#pragma HLS pipeline
			if (j == 0 || j == IMG_WIDTH - 1 || i - 2 == IMG_HEIGHT - 1) {
				val = 0;
			}
			else {
				surroundingPix[0] = cache1[((i-3)%4)*IMG_WIDTH + (j-1)];
				surroundingPix[1] = cache1[((i-3)%4)*IMG_WIDTH + (j)];
				surroundingPix[2] = cache1[((i-3)%4)*IMG_WIDTH + (j+1)];
				surroundingPix[3] = cache1[((i-2)%4)*IMG_WIDTH + (j-1)];
				surroundingPix[4] = cache1[((i-2)%4)*IMG_WIDTH + (j)];
				surroundingPix[5] = cache1[((i-2)%4)*IMG_WIDTH + (j+1)];
				surroundingPix[6] = cache1[((i-1)%4)*IMG_WIDTH + (j-1)];
				surroundingPix[7] = cache1[((i-1)%4)*IMG_WIDTH + (j)];
				surroundingPix[8] = cache1[((i-1)%4)*IMG_WIDTH + (j+1)];

				val = sobel_operator(4, surroundingPix);
			}
			for (int j = 0; j < 4; ++j)
				fourWide.pix[j] = val;
			out_pix[(i-2)*IMG_WIDTH + j] = fourWide.full;

		}
	}


}
