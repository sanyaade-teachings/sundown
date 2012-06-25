#!/bin/bash
echo "Cleaning"
make clean

echo "Generating bit code"
make

echo "Adding .bc extension to sundown"
mv sundown sundown.bc

echo "Converting sundown.bc "
# emcc sundown.bc -o sundown_o0.js
# emcc -O1 sundown.bc -o sundown_o1.js
emcc -O2 sundown.bc -o sundown_o2.js
# emcc -O3 sundown.bc -o sundown_o3.js
