#!/bin/bash
set -e

version=$(cat version.txt)

mkdir -p ~/github
cd ~/github

# PyTorch
git clone --depth 1 --branch v$version https://github.com/pytorch/pytorch.git


# Domain Libraries
# PKGS=(data vision text audio)
# for pkg in ${PKGS[@]}; do
# 	git clone git@github.com:pytorch/${pkg}.git "torch-${pkg}"
# done

# torch/benchmarkBenchmark
# torchbenchmark needs to have this name and be in the same folder as
# PyTorch, otherwise benchmarks/dynamo/torchbench.py won't find it
# git clone git@github.com:pytorch/benchmark.git "torchbenchmark"
