cmake_minimum_required(VERSION 2.8)
project(clua)


file (GLOB SOURCE_FILES *.c *.h)
list (REMOVE_ITEM SOURCE_FILES ${CMAKE_CURRENT_SOURCE_DIR}/lua.c ${CMAKE_CURRENT_SOURCE_DIR}/lua.h)

add_library(lua-static STATIC ${SOURCE_FILES})

add_executable(lua lua.c lua.h)
target_link_libraries(lua lua-static readline dl m)
