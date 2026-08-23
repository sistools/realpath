# realpath - Changes <!-- omit in toc -->


## 0.1.1 - 23rd August 2026

* Documented the Windows-only program, its **STLSoft** dependency, and its CMake build, installation, and testing workflows in **README.md** and **INSTALL.md**;
* Clarified the Windows-only scope in **README.md**, including a usage example, project information, and a Windows badge;
* Modernised source-control metadata in **.gitattributes** and editor configuration in **.vimrc** and **.vscode/settings.json**;
* Updated **CMakeLists.txt** to preserve caller-selected C and C++ standards and report the configured build type;
* Improved CMake helper scripts with safer path handling, project-aware diagnostics, configurable C++ standards, and coloured status messages;
* Replaced the POSIX Doxygen helper with the Windows **generate_doxygen.cmd** script;
* Updated GitHub Actions push-branch coverage for the standard development and release branches;
* Corrected release information in **NEWS.md** and updated the outstanding work in **TODO.md**;


## 0.1.0 - 16th August 2026

* added support for '--version';


## 0.0.3 - 5th August 2026

* Added modular GitHub Actions CI (**ci.yml** / **ci-cell.yml**) for Windows (Windows-only tool);
* Modernised **CMakeLists.txt** (explicit Windows-only guard; **STLSoft** discovery/`STLSOFT` override; MSVC options; `BUILD_TESTING`);
* Added CMake helper scripts (**prepare_cmake.sh**, **build_cmake.sh**, **clean_cmake.sh**, **remove_cmake_artefacts.sh**) and **run_all_unit_tests.cmd**;
* Added **cmake/BuildType.cmake**;
* Added **.sis/script_info_lines.txt** and **.sis/project_name.txt**;
* Project boilerplate bootstrap (**.gitattributes**, **.gitignore**, **.vimrc**, **.vscode/settings.json**, **AUTHORS.md**, **LICENSE**, **README.md**, **INSTALL.md**, **TODO.md**, **NEWS.md**);
* Fixed missing standard-library includes in **realpath.cpp**;


## 0.0.2 - 4th May 2025

* Added CMake support (**CMakeLists.txt**);


<!-- ########################### end of file ########################### -->
