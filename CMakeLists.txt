cmake_minimum_required(VERSION 3.11)

project(dylib)
# These settings come from https://github.com/robotology/how-to-export-cpp-library/blob/master/CMakeLists.txt

# To build shared libraries in Windows, we set CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS to TRUE.
# See https://cmake.org/cmake/help/v3.4/variable/CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS.html
# See https://blog.kitware.com/create-dlls-on-windows-without-declspec-using-new-cmake-export-all-feature/
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)


# Under MSVC, we set CMAKE_DEBUG_POSTFIX to "d" to add a trailing "d" to library
# built in debug mode. In this Windows user can compile, build and install the
# library in both Release and Debug configuration avoiding naming clashes in the
# installation directories.
if (MSVC)
    set(CMAKE_DEBUG_POSTFIX "d")
endif ()

option(BUILD_ALL "Build gollama library" OFF)
option(BUILD_GOLLAMA_LIBS "Build gollama library" OFF)

if (BUILD_ALL)
    set(BUILD_GOLLAMA_LIBS ON)
endif ()


if (BUILD_GOLLAMA_LIBS)
    add_subdirectory(gollama)
endif ()
