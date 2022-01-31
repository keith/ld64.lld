# ld64.lld

This repo vendors universal macOS binaries of
[lld](https://lld.llvm.org) built for MachO support. Ideally these
binaries will eventually come from [llvm
releases](https://github.com/llvm/llvm-project/releases) instead, but
currently this project is in active development, and tracking a version
closer to HEAD can be useful.

## Build instructions

To build the smallest and fastest binary possible, I'm currently
building this with:

```
cmake ../llvm -G Ninja -DLLVM_ENABLE_PROJECTS='lld' -DCMAKE_BUILD_TYPE=Release -DPKG_CONFIG_EXECUTABLE=/bin/true -DCMAKE_OSX_DEPLOYMENT_TARGET=11.0 -DLLVM_ENABLE_LTO=Thin -DLLVM_TARGETS_TO_BUILD='X86;AArch64' -DCMAKE_OSX_ARCHITECTURES='x86_64;arm64'
```
