#/usr/bin/env bash

set -eu

export INSTALL_DIR=~/opt/symbiflow
export FPGA_FAM="xc7"
export TARGET="basys3" 
export PATH="$INSTALL_DIR/$FPGA_FAM/install/bin:$PATH";
. "$INSTALL_DIR/$FPGA_FAM/conda/etc/profile.d/conda.sh"

conda activate xc7
cd xc7
make -C "$1"
make download -C "$1"

