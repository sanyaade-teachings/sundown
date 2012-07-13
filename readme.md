Emscripten, swig, and native branch are depreciated. The master branch now contains all the relevant code and build files.

#### 3 Make files.

- Makefile - Emscripten
- Makefile.native - BridJ, mostly unmodified upstream makefile
- Makefile.swig - SWIG

Run `bash to_js.sh` to compile JavaScript version.

Use latest emcc with latest [closure compiler](http://code.google.com/p/closure-compiler/downloads/list) in `emscripten/third_party/closure-compiler`.
