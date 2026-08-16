# realpath <!-- omit in toc -->

Windows analogue of the Unix **realpath**(1) utility.


![C++](https://img.shields.io/badge/C%2B%2B-00599C?style=flat&logo=c%2B%2B&logoColor=white)
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
  - [Dependencies](#dependencies)
  - [Related projects](#related-projects)
  - [License](#license)


## Introduction

**realpath** is a small, standalone Windows utility that prints the absolute path of a given (possibly relative) path, implemented in terms of the **STLSoft** / **WinSTL** libraries. It is a **Windows-only** analogue of Unix **realpath**(1).


## Installation

Detailed instructions - via **CMake** - are provided in the accompanying [INSTALL.md](./INSTALL.md)
file.


## Components

The project creates a single executable program, **realpath**.


## Examples

```bat
> realpath .
C:\Users\...\sistools\realpath
```


## Project Information


### Where to get help

[GitHub Page](https://github.com/sistools/realpath "GitHub Page")


### Contribution guidelines

Defect reports, feature requests, and pull requests are welcome on [the **realpath** GitHub page](https://github.com/sistools/realpath).


### Dependencies

**realpath** depends on:

* [**STLSoft**](https://github.com/synesissoftware/STLSoft) (1.11+; **WinSTL**);


### Related projects

Other (similar) projects include:

* [**chomp**](https://github.com/sistools/chomp);
* [**lstrip**](https://github.com/sistools/lstrip);
* [**mksock**](https://github.com/sistools/mksock);
* [**rstrip**](https://github.com/sistools/rstrip);


### License

**realpath** is released under the 3-clause BSD license. See [LICENSE](./LICENSE) for details.


<!-- ########################### end of file ########################### -->
