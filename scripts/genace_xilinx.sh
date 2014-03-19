#!/bin/bash

EXPECTED_ARGS=2

if [ $# -ne $EXPECTED_ARGS ]
then
	echo "Usage: `basename $0` {input_bitstream output_ace_filename}"
	exit 1;
fi

INPUT_BITSTREAM=$1
OUTPUT_ACE=$2

${XILINX}/EDK/bin/lin64/xmd \
	-tcl ${XILINX}/EDK/data/xmd/genace.tcl \
	-hw ${INPUT_BITSTREAM} \
	-ace ${OUTPUT_ACE}.ace \
	-board ml605
