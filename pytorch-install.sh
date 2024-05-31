#!/bin/env bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

version=$(cat $SCRIPT_DIR/version.txt)

export PYTORCH_BUILD_VERSION=$version
export PYTORCH_BUILD_NUMBER=0

eval "$(conda shell.bash hook)"
conda activate pytorch-dev
cd ~/github/pytorch

source $SCRIPT_DIR/torch-common.sh

python setup.py bdist_wheel $@

whl_file=$(ls dist/*.whl)
pip install $whl_file
