#!/bin/sh -l

### Normal Test
mkdir build
cmake -B build -S . && \
    cmake --build build --config Release && \
    ctest --test-dir build --output-on-failure

### Test without OpenMP
rm -rf build/*
cmake -B build -S . -DENABLE_OpenMP=FALSE && \
    cmake --build build --config Release && \
    ctest --test-dir build --output-on-failure
