#include "Sobel.h"
#include <string.h>

#define ABS(x)          ((x>0)? x : -x)

typedef union {
	uint8_t pix[4];
	unsigned full;
} OneToFourPixels;



uint8_t sobel_operator(const int rows, const int cols, uint8_t image[4][IMG_WIDTH])
{
#pragma HLS inline


	unsigned edge_weight;
	uint8_t edge_val;

	const char x_op[3][3] = {	{ -1,0,1 },
								{ -2,0,2 },
								{ -1,0,1 } };

	const char y_op[3][3] = {	{ 1,2,1 },
								{ 0,0,0 },
								{ -1,-2,-1 } };

	int x_weight = 0;
	int y_weight = 0;
	OpRows: for(int j = 0; j < 3; j++) {
		OpCols: for(int i = 0; i < 3; i++) {
			// X direction gradient
			x_weight = x_weight +  (image[(rows+i-1)%4][cols+j-1] * x_op[i][j]);

			// Y direction gradient
			y_weight = y_weight + (image[(rows+i-1)%4][cols+j-1] * y_op[i][j]);
		}
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


	uint8_t cache[4][IMG_WIDTH];
#pragma HLS array_partition variable=cache complete dim=1
	uint8_t val;
	OneToFourPixels fourWide;

	FillCacheRows: for (unsigned int i = 0; i < 2; i++) {
		FillCacheCols: for (unsigned int j = 0; j < IMG_WIDTH; j++) {
#pragma HLS pipeline
#pragma HLS loop_flatten off
			cache[i][j] = inter_pix[i*IMG_WIDTH + j];
		}
	}


  FilterRows: for (unsigned int i = 0; i < IMG_HEIGHT; ++i) {
			FilterCols: for (unsigned int j = 0; j < IMG_WIDTH; ++j) {
#pragma HLS pipeline II=2
#pragma HLS loop_flatten off

				if (j == 0 || j == IMG_WIDTH - 1 || i == 0 || i == IMG_HEIGHT - 1) {
					val = 0;
				}
				else {
					val = sobel_operator(i, j, cache);
				}

				OneTo4: for (int k = 0; k < 4; ++k)
					fourWide.pix[k] = val;
				out_pix[i*IMG_WIDTH + j] = fourWide.full;

				cache[(i+2)%4][j] = inter_pix[((i+2)%IMG_HEIGHT)*IMG_WIDTH + j];

		}
	}


}
