#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/gabriel/Documents/INF3610/HDMI_3610/3610_4/1490679_1771119/sobellab4/solution1/.autopilot/db/a.g.bc ${1+"$@"}
