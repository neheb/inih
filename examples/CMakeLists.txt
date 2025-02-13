# Demonstrate how to use CMake to consume inih and run example code.

# meson setup build --prefix=$(pwd)/install
# meson compile -C build
# meson install -C build
# cd examples
# cmake -B build -DCMAKE_PREFIX_PATH=../install
# cmake --build build
# ./build/ini_dump test.ini
# ./build/ini_example 
# ./build/ini_xmacros
# ./build/ini_reader

cmake_minimum_required(VERSION 3.22)
project(inih_examples)

find_package(inih REQUIRED)

add_executable(ini_dump ini_dump.c)
target_link_libraries(ini_dump PRIVATE inih::inih)

add_executable(ini_example ini_example.c)
target_link_libraries(ini_example PRIVATE inih::inih)

add_executable(ini_xmacros ini_xmacros.c)
target_link_libraries(ini_xmacros PRIVATE inih::inih)


find_package(INIReader REQUIRED)
add_executable(ini_reader INIReaderExample.cpp)
target_link_libraries(ini_reader PRIVATE inih::ini_reader)
