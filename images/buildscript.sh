#!/bin/bash

set -xe

git clone https://github.com/chigraph/chigraph -b "$CHI_REVISION" --depth=1
cd chigraph
mkdir build && cd build
cmake .. -DCMAKE_CXX_COMPILER="$CHI_COMPILER" -DCMAKE_BUILD_TYPE="$CHI_BUILD_TYPE" -DLLVM_CONFIG="$CHI_LLVM_CONFIG" -DCG_USE_SYSTEM_LIBGIT2=ON -DCG_BUILD_DEBUGGER=OFF -GNinja
ninja -j1
CTEST_OUTPUT_ON_FAILURE=1 ninja test

