cmake_minimum_required(VERSION 3.23)

project(gtest-compiles VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED true)
set(CMAKE_CONFIGURATION_TYPES "Debug;Release" CACHE STRING "" FORCE)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set(CMAKE_SCRIPTS_DIR ${CMAKE_CURRENT_LIST_DIR}/cmake)

enable_testing()
add_subdirectory(test)
add_subdirectory(src)
