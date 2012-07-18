The master branch now contains all code and build files. Other branches are no longer used.

#### 3 Make files.

- Makefile - Emscripten
- Makefile.native - BridJ, mostly unmodified upstream makefile
- Makefile.swig - SWIG

`./js.sh` builds the emscripten library

`./native.sh` builds the native library and a test executable

Requires latest emcc on incoming branch.


sudo apt-get install -y gperf
gperf -N find_block_tag -H hash_block_tag -C -c -E --ignore-case html_block_names.txt > ./src/html_blocks.h
