# realpath - Installation and Use <!-- omit in toc -->



## Requisites

**realpath** requires:

* [**STLSoft**](https://github.com/synesissoftware/STLSoft), version 1.11.1
  or later;
* CMake 3.20 or later;
* a Windows C/C++ toolchain supported by CMake.


## Building

The primary build method is CMake. From PowerShell:

```powershell
git clone https://github.com/sistools/realpath.git
Set-Location realpath
cmake -S . -B _build
cmake --build _build --config Release
```

The resulting executable is `_build/Release/realpath.exe`.


## Installing

To install into a user-local directory:

```powershell
cmake --install _build --config Release --prefix "$env:LOCALAPPDATA\Programs\realpath"
```

The installed executable is placed in the `bin` directory beneath the
selected prefix.


## Testing

Configure the project with `-DBUILD_TESTING=ON` to build its tests, then run:

```powershell
ctest --test-dir _build -C Release --output-on-failure
```


<!-- ########################### end of file ########################### -->

