@echo off

SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

SET "SCRIPT_DIRECTORY=%~dp0"
SET "SCRIPT_PATH_DOC=%~n0[%~x0]"
IF DEFINED SIS_CMAKE_BUILD_DIR (

    SET "CMAKE_DIR=%SIS_CMAKE_BUILD_DIR%"
) ELSE (

    SET "CMAKE_DIR=%SCRIPT_DIRECTORY%_build"
)

SET "DOXYGEN_OPTIONS="

FOR %%a IN (%*) DO (
    IF /I {--help}=={%%a} (
        IF EXIST "%SCRIPT_DIRECTORY%.sis\script_info_lines.txt" (

            type "%SCRIPT_DIRECTORY%.sis\script_info_lines.txt"
        )
        ECHO Generates HTML API documentation from public headers via Doxygen
        ECHO(
        ECHO %SCRIPT_PATH_DOC% [ ... flags/options ... ]
        ECHO(
        ECHO Flags/options:
        ECHO(
        ECHO     behaviour:
        ECHO(
        ECHO     -q
        ECHO     --quiet
        ECHO         causes the flag -q to be passed to Doxygen, which will then act as
        ECHO         if QUIET=YES has been set
        ECHO(
        ECHO(
        ECHO     standard flags:
        ECHO(
        ECHO     --help
        ECHO         displays this help and terminates
        ECHO(
        ECHO Environment:
        ECHO(
        ECHO     SIS_CMAKE_BUILD_DIR
        ECHO         CMake build directory ^(default: ^<project^>/_build^); documentation is
        ECHO         written to ^<build-dir^>/doxygen/html/
        ECHO(
        EXIT /B 0
    ) ELSE IF /I {-q}=={%%a} (
        SET "DOXYGEN_OPTIONS=-q"
    ) ELSE IF /I {--quiet}=={%%a} (
        SET "DOXYGEN_OPTIONS=-q"
    ) ELSE (
        ECHO %SCRIPT_PATH_DOC%: unrecognised argument '%%a'; use --help for usage 1>&2

        EXIT /B 1
    )
)

IF NOT EXIST "%CMAKE_DIR%" (

    MKDIR "%CMAKE_DIR%" 2>NUL
    IF ERRORLEVEL 1 (

        ECHO %SCRIPT_PATH_DOC%: could not create CMake build directory '%CMAKE_DIR%' 1>&2

        EXIT /B 1
    )
)

PUSHD "%CMAKE_DIR%" >NUL
IF ERRORLEVEL 1 (

    ECHO %SCRIPT_PATH_DOC%: could not enter CMake build directory '%CMAKE_DIR%' 1>&2

    EXIT /B 1
)

SET "ProjectName="
FOR /F "usebackq tokens=* delims=" %%p IN ("%SCRIPT_DIRECTORY%.sis\project_name.txt") DO SET "ProjectName=%%p"

IF NOT DEFINED ProjectName (

    ECHO %SCRIPT_PATH_DOC%: could not read project name from .sis\project_name.txt 1>&2

    POPD
    EXIT /B 1
)

WHERE doxygen >NUL 2>&1
IF ERRORLEVEL 1 (

    ECHO %SCRIPT_PATH_DOC%: doxygen not found on PATH 1>&2

    POPD
    EXIT /B 1
)

IF NOT EXIST "Doxyfile" (

    ECHO %SCRIPT_PATH_DOC%: Doxyfile not found in '%CMAKE_DIR%' 1>&2

    POPD
    EXIT /B 1
)

IF NOT EXIST "doxygen" (
    MKDIR "doxygen"
    IF ERRORLEVEL 1 (

        ECHO %SCRIPT_PATH_DOC%: could not create '%CMAKE_DIR%\doxygen' 1>&2

        POPD
        EXIT /B 1
    )
)

ECHO Executing Doxygen for %ProjectName% (in %CMAKE_DIR%)

(
    type "Doxyfile"
    ECHO.
    ECHO # Output directory (overridden by %SCRIPT_PATH_DOC%^)
    ECHO OUTPUT_DIRECTORY = %CMAKE_DIR%\doxygen
) | doxygen %DOXYGEN_OPTIONS% -
IF ERRORLEVEL 1 (

    POPD
    EXIT /B 1
)

ECHO API documentation written to %CMAKE_DIR%\doxygen\html\index.html

POPD
EXIT /B 0
