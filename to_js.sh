#!/bin/bash
echo "Cleaning"
make clean

echo "Generating bit code"
make

"Adding .bc extension to sundown"
mv sundown sundown.bc

echo "Converting sundown.bc "
emcc -O3 sundown.bc -o sundown_o3.js
