cmake_minimum_required(VERSION 3.26)
project(logic_circuits)

set(CMAKE_CXX_STANDARD 17)

add_executable(logic_circuits main.cpp
        elements.cpp
        elements.h
        elements_declare.h
)
