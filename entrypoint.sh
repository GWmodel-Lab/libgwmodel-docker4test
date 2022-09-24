#!/bin/sh -l

mkdir build
cmake -B build -S . && \
    cmake --build build --config Release && \
    ctest --test-dir build --output-on-failure
