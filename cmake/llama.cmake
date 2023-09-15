
include(FetchContent)
# FetchContent_MakeAvailable was not added until CMake 3.14
if(${CMAKE_VERSION} VERSION_LESS 3.14)
    include(add_FetchContent_MakeAvailable.cmake)
endif()

set(LLAMA_GIT_TAG  b1212)
set(LLAMA_GIT_URL  https://github.com/ggerganov/llama.cpp)

FetchContent_Declare(
  llama
  GIT_REPOSITORY    ${LLAMA_GIT_URL}
  GIT_TAG           ${LLAMA_GIT_TAG}
)

FetchContent_MakeAvailable(llama)