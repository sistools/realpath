# realpath - Installation and Use <!-- omit in toc -->


- [Requisites](#requisites)
- [Building](#building)
  - [via CMake](#via-cmake)


## Requisites

**realpath** is a **Windows-only** program (implemented in [**realpath.cpp**](./realpath.cpp)) and depends on:

* [**STLSoft**](https://github.com/synesissoftware/STLSoft) (1.11+) - **WinSTL** absolute-path and error-description components;


## Building


### via CMake

The primary choice for installation is by use of **CMake** on Windows.

1. Obtain the latest distribution of **realpath**, from
   https://github.com/sistools/realpath/, e.g.

    ```bash
    $ mkdir -p ~/open-source
    $ cd ~/open-source
    $ git clone https://github.com/sistools/realpath/
    ```

2. Prepare the CMake configuration, via the **prepare_cmake.sh** script, as
   in:

    ```bash
    $ cd ~/open-source/realpath
    $ ./prepare_cmake.sh
    ```

   (**NOTE**: configuring on a non-Windows host fails: the tool targets
   Windows only.)

3. Run a build of the generated **CMake**-derived build files via the
   **build_cmake.sh** script, as in:

    ```bash
    $ cd ~/open-source/realpath
    $ ./build_cmake.sh
    ```

   (**NOTE**: if you provide the flag `--run-make` (=== `-m`) in step 2 then you do
   not need this step.)

4. As a check, execute the built program, as in:

    ```bash
    $ cd ~/open-source/realpath
    $ ./_build/realpath --help
    ```

5. Finally, if you wish to do so, you can install the tool on the host, via `cmake`, as in:

    ```bash
    $ cd ~/open-source/realpath
    $ cmake --install ./_build --config Release
    ```


<!-- ########################### end of file ########################### -->
