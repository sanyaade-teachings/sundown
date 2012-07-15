The master branch now contains all code and build files. Other branches are no longer used.

#### 3 Make files.

- Makefile - Emscripten
- Makefile.native - BridJ, mostly unmodified upstream makefile
- Makefile.swig - SWIG

`./js.sh` builds the emscripten library

`./native.sh` builds the native library and a test executable

Requires latest emcc on incoming branch.
