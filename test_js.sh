#!/bin/bash
echo "Cleaning"
make clean

echo "Generating bit code"
make -f Makefile.js.test

echo "Adding .bc extension to sundown"
mv libsundown.so sundown.bc
