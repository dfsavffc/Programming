cmake_minimum_required(VERSION 3.26)

set(TARGET "graph")

project(${TARGET})

set(FLTK_SKIP_FLUID True)
set(OpenGL_GL_PREFERENCE "GLVND")

find_package(FLTK REQUIRED)
find_package(OpenGL REQUIRED)

include_directories(
        SYSTEM
        ${FLTK_INCLUDE_DIR}
)

link_directories(
        /Users/Dfsavffc/Cpp/lib/FLTK/lib
)

add_executable(
        ${TARGET}
        main.cpp
        ${LIB_DIR}/Graph_lib/Graph.cpp
        ${LIB_DIR}/Graph_lib/GUI.cpp
        ${LIB_DIR}/Graph_lib/Window.cpp
)

target_link_libraries(
        ${TARGET}
        ${FLTK_LIBRARIES}
        fltk_jpeg
        fltk_png
        fltk_z
        ${OPENGL_LIBRARIES}
)

install(TARGETS ${TARGET})
