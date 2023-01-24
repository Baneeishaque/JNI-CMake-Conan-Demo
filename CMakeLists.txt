cmake_minimum_required(VERSION 3.25)

set(CMAKE_CXX_STANDARD 23)

project(JNI_Demo)

add_library(${PROJECT_NAME}
        SHARED
        HelloJNI.cpp)

if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/0.18.1/conan.cmake"
                "${CMAKE_BINARY_DIR}/conan.cmake"
                TLS_VERIFY ON)
endif()

include(${CMAKE_BINARY_DIR}/conan.cmake)
conan_cmake_configure(REQUIRES zulu-openjdk/11.0.15
                        GENERATORS cmake)

conan_cmake_install(PATH_OR_REFERENCE .
                        BUILD missing)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

set_target_properties(${PROJECT_NAME} PROPERTIES PREFIX "")
set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME "hello")
