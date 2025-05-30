
#include <stlsoft/stlsoft.h>

#if _STLSOFT_VER < 0x010b0184
# error requires STLSoft v1.11.1-b4 or later
#endif
#if __cplusplus < 201702L
# error requires C++17 or later
#endif

#include <platformstl/filesystem/path_functions.h>
#include <winstl/error/error_desc.hpp>
#include <winstl/filesystem/absolute_path.hpp>

#include <cstdio>
#include <iostream>


#define REALPATH_VER_MAJOR  0
#define REALPATH_VER_MINOR  0
#define REALPATH_VER_PATCH  2


int main(int argc, char* argv[])
{
    auto const program_name = platformstl::get_executable_name_from_path(argv[0]);

    switch (argc)
    {
    case 2:

        if (0 == std::strcmp("--help", argv[1]))
        {
            std::cout
                << "USAGE: "
                << program_name
                << " <relative-path>"
                << std::endl;

            return EXIT_SUCCESS;
        }
        else
        {
            winstl::absolute_path abs_path(argv[1]);

            if (0 == abs_path.length())
            {
                winstl::error_desc ed;

                std::cerr
                    << program_name
                    << ": failed to obtain absolute path for '"
                    << argv[1]
                    << "': "
                    << ed
                    << std::endl;

                return EXIT_FAILURE;
            }
            else
            {
                std::cout
                    << abs_path
                    << std::endl;

                return EXIT_SUCCESS;
            }
        }
        break;
    case 1:

        std::cerr
            << program_name
            << ": no name specified; use --help for usage"
            << std::endl;

        return EXIT_FAILURE;
    default:

        std::cerr
            << program_name
            << ": too many arguments; use --help for usage"
            << std::endl;

        return EXIT_FAILURE;
    }
}

