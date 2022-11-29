#!/bin/sh -l

### Normal Test
mkdir build
cmake -B build -S . -DCMAKE_BUILD_TYPE:STRING=Debug && \
    cmake --build build --config Debug && \
    ctest --test-dir build --output-on-failure

### Test without OpenMP
rm -rf build/*
cmake -B build -S . -DCMAKE_BUILD_TYPE:STRING=Debug -DENABLE_OpenMP=FALSE && \
    cmake --build build --config Debug && \
    ctest --test-dir build --output-on-failure
