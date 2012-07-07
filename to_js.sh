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
# emcc -O2 sundown.bc -o sundown_o2.js
# emcc -O3 sundown.bc -o sundown_o3.js
emcc -O2 --minify 0 sundown.bc -o sundown_o2_m0.js
# emcc -O2 --closure 0 sundown.bc -o sundown_o2_c0.js
# emcc -O2 --minify 0 -s ASSERTIONS=1 sundown.bc -o sundown_o2_m0_a1.js
# emcc -O2 --closure 0 -s ASSERTIONS=1 sundown.bc -o sundown_o2_c0_a1.js
# emcc -O2 -s ASSERTIONS=1 sundown.bc -o sundown_o2_a1.js

echo "Removing whitespace (minify 1 is broken)"
java -jar ./compiler-latest/compiler.jar --compilation_level WHITESPACE_ONLY --js sundown_o2_m0.js --js_output_file sundown_o2_wo.js
