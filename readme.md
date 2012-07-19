- Based on [11d2add5b43e6c209ca4f7c4f326832f0ba63f70](https://github.com/tanoku/sundown/commit/11d2add5b43e6c209ca4f7c4f326832f0ba63f70)

#### 3 Make files.

- Makefile - Emscripten
- Makefile.native - BridJ, mostly unmodified upstream makefile
- Makefile.swig - SWIG

`./js.sh` builds the emscripten library

`./native.sh` builds the native library and a test executable

Requires latest emcc on incoming branch.


> sudo apt-get install -y gperf
gperf -N find_block_tag -H hash_block_tag -C -c -E --ignore-case html_block_names.txt > ./src/html_blocks.h
