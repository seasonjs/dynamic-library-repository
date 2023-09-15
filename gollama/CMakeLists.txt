project(gollama)
cmake_minimum_required(VERSION 3.11)

add_definitions(-std=c++11)

set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake;${CMAKE_MODULE_PATH}")
include(llama)
include_directories(${llama_SOURCE_DIR}/common)

add_library(gollama
            SHARED
            binding.cpp
            binding.h
)

target_include_directories(gollama PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_compile_definitions(gollama PRIVATE GOLLAMA_SHARED GOLLAMA_BUILD)
target_link_libraries(gollama common llama ${CMAKE_THREAD_LIBS_INIT})