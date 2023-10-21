cmake_minimum_required(VERSION 3.26)
project(calculator)

set(CMAKE_CXX_STANDARD 17)

add_executable(calculator
        token.h
        token.cpp
        variable.h
        variable.cpp
        calculating.cpp
        calculating.h
        main.cpp
        const.h
        map_func.cpp
        map_func.h)
