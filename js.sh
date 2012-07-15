#!/bin/bash
echo "Cleaning"
make clean

echo "Generating bit code"
make

echo "Adding .bc extension to sundown"
mv libsundown.so sundown.bc

echo "Converting sundown.bc "
# emcc sundown.bc -o sundown_o0.js
# emcc -O1 sundown.bc -o sundown_o1.js
# emcc -O2 sundown.bc -o sundown_o2.js
# emcc -O3 sundown.bc -o sundown_o3.js
# emcc -O2 --minify 0 sundown.bc -o sundown_o2_m0.js
# emcc -O2 --closure 0 sundown.bc -o sundown_o2_c0.js
# emcc -O2 --minify 0 -s ASSERTIONS=1 sundown.bc -o sundown_o2_m0_a1.js
# emcc -O2 --closure 0 -s ASSERTIONS=1 sundown.bc -o sundown_o2_c0_a1.js
# emcc -O2 -s ASSERTIONS=1 sundown.bc -o sundown_o2_a1.js

# emcc -O2 sundown.bc -o sundown.js -s EXPORTED_FUNCTIONS="['_main', '_malloc', '_free', '_str_to_html', '_realloc']"
emcc -O2 --minify 0 --closure 0 sundown.bc -o sundown.js -s EXPORTED_FUNCTIONS="['_main', '_malloc', '_free', '_str_to_html', '_realloc']"
