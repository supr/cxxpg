cmake_minimum_required(VERSION 3.1)
project(cxxpg VERSION 0.1)

set(GFLAGS_BUILD_SHARED_LIBS "ON")
include(external/external.cmake)

set(SOURCES
	src/main.cc)

find_package(Threads)

add_executable(cxxpg ${SOURCES})
target_link_libraries(cxxpg PRIVATE fmt spdlog gflags ${CMAKE_THREAD_LIBS_INIT})
