
#include <platformstl/filesystem/path_functions.h>
#include <winstl/error/error_desc.hpp>
#include <winstl/filesystem/absolute_path.hpp>

#include <iostream>


#define REALPATH_VER_MAJOR  0
#define REALPATH_VER_MINOR  0
#define REALPATH_VER_PATCH  2


int main(int argc, char* argv[])
{
	stlsoft::string_slice_m_t const program_name = platformstl::get_executable_name_from_path(argv[0]);

	switch (argc)
	{
	case 2:

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
			<< "USAGE: "
			<< program_name
			<< " <relative-path>"
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

