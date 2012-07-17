#!/bin/bash
# sundown.bc must already exist (run test_js.sh in root dir)
# create test.js with md embedded.
# embed-file does not like directories.
emcc -O2 ./../sundown.bc -o test.js --embed-file 0.md --embed-file 1.md --embed-file 2.md --embed-file 3.md

# node test.js 0.md

# echo "Saving JS output"
# node test.js data.md > output.js.html

