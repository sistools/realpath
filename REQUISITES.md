# realpath - Requisites <!-- omit in toc -->


- [Introduction](#introduction)
- [Build requirements](#build-requirements)
  - [STLSoft](#stlsoft)
  - [CMake](#cmake)
  - [Windows C/C++ toolchain](#windows-cc-toolchain)
- [Optional requirements](#optional-requirements)
  - [Doxygen](#doxygen)


## Introduction

**realpath** is a Windows-only command-line program implemented in
[**realpath.cpp**](./realpath.cpp). It uses the **STLSoft** / **WinSTL**
libraries to provide Windows path and error-description facilities.


## Build requirements


### STLSoft

**STLSoft** version **1.11.1** or later is required. It may be supplied to
CMake in either of the following ways:

* install a CMake package that can be found by `find_package(STLSoft)`;
* pass the STLSoft root directory with `-DSTLSOFT=<directory>`; or
* set the `STLSOFT` environment variable to the STLSoft root directory.

The root directory must contain the STLSoft `include` directory.


### CMake

**CMake** version **3.20** or later is required. The default C++ language
standard is C++17; this can be changed when configuring the project with the
**prepare_cmake.sh** helper.


### Windows C/C++ toolchain

A Windows C/C++ toolchain supported by **CMake** is required. The project
supports the toolchains and generators available to the installed CMake,
including Visual C++ and MinGW where configured.


## Optional requirements


### Doxygen

**Doxygen** is required only when generating the API documentation with
**generate_doxygen.cmd**. The `doxygen` executable must be available on
`PATH`, and the CMake build directory must contain the generated `Doxyfile`.


<!-- ########################### end of file ########################### -->
