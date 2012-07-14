#!/bin/bash
echo "Cleaning"
make clean
echo "Making native"
make -f Makefile.native
echo "Saving native output"
./test data.md > output.native.html

