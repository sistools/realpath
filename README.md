# realpath <!-- omit in toc -->


![C++](https://img.shields.io/badge/C%2B%2B-00599C?style=flat&logo=c%2B%2B&logoColor=white)
![Windows](https://img.shields.io/badge/OS-Windows-0078D6?style=flat&logo=windows&logoColor=white)
[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![GitHub release](https://img.shields.io/github/v/release/sistools/realpath.svg)](https://github.com/sistools/realpath/releases/latest)
[![Last Commit](https://img.shields.io/github/last-commit/sistools/realpath)](https://github.com/sistools/realpath/commits/master)
[![CI](https://github.com/sistools/realpath/actions/workflows/ci.yml/badge.svg)](https://github.com/sistools/realpath/actions/workflows/ci.yml)


## Table of Contents <!-- omit in toc -->

- [Introduction](#introduction)
- [Installation](#installation)
- [Components](#components)
- [Examples](#examples)
- [Project Information](#project-information)
  - [Where to get help](#where-to-get-help)
  - [Contribution guidelines](#contribution-guidelines)
    - [Tests-only Dependencies](#tests-only-dependencies)
  - [Related projects](#related-projects)
  - [License](#license)


## Introduction

**realpath** is a small Windows-only utility that resolves a path in terms of
the STLSoft C/C++ libraries.


## Installation

The project uses CMake. From the project directory:

```powershell
cmake -S . -B _build
cmake --build _build --config Release
```


## Components

The project creates a single executable program, **realpath**.


## Examples

```powershell
> realpath.exe path
```


## Project Information


### Where to get help

[GitHub Page](https://github.com/sistools/realpath "GitHub Page")


### Contribution guidelines

Defect reports, feature requests, and pull requests are welcome on [the
**realpath** GitHub page](https://github.com/sistools/realpath).


#### Tests-only Dependencies

For unit-testing, **realpath** uses the test dependencies configured by its
CMake build.


### Related projects

Other **sistools** projects include:

* [**chomp**](https://github.com/sistools/chomp);
* [**errni**](https://github.com/sistools/errni) (errno on all platforms, and also GetLastError codes on Windows);
* [**lnunique**](https://github.com/sistools/lnunique);
* [**lslocales**](https://github.com/sistools/lslocales);
* [**lstrip**](https://github.com/sistools/lstrip);
* [**mksock**](https://github.com/sistools/mksock) (Unix-only);
* [**ReadDebugString**](https://github.com/sistools/ReadDebugString) (Windows-only);
* [**rstrip**](https://github.com/sistools/rstrip);
* [**WriteDebugString**](https://github.com/sistools/WriteDebugString) (Windows-only);


### License

**realpath** is released under the 3-clause BSD license. See [LICENSE](./LICENSE)
for details.


<!-- ########################### end of file ########################### -->

