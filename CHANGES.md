# **realpath** Changes <!-- omit in toc -->


## 0.0.3 - 3rd August 2026

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
