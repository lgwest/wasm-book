cmake_minimum_required(VERSION 3.14)
project(12-sdl-sdl2-sound)
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake/sdl2)

#project(TwinklebearDevLessons)
#
## Use our modified FindSDL2* modules
#set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${TwinklebearDevLessons_SOURCE_DIR}/cmake")
#set(BIN_DIR ${TwinklebearDevLessons_SOURCE_DIR}/bin)
#set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
#
## Bump up warning levels appropriately for clang, gcc & msvc and build in debug mode
#if (MSVC)
#	if (CMAKE_CXX_FLAGS MATCHES "/W[0-4]")
#		string(REGEX REPLACE "/W[0-4]" "/W4" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
#	else()
#		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
#	endif()
#else()
#	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -pedantic -std=c++11")
#	set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_DEBUG} -g")
#	set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_RELEASE} -O2")
#endif()

set(CMAKE_CXX_STANDARD 20)
#set(CONFIG_DIR  ${CMAKE_CURRENT_SOURCE_DIR}/config)
#find_package(SDL2 REQUIRED)
#include_directories(${SDL2_INCLUDE_DIR})
#include_directories(include)

#add_subdirectory(Lesson0)
#add_subdirectory(Lesson1)
#add_subdirectory(Lesson2)
#add_subdirectory(Lesson3)
#add_subdirectory(Lesson4)
#add_subdirectory(Lesson5)
#add_subdirectory(Lesson6)

#add_subdirectory(11-sdl/1-locked-on-camera)
#add_subdirectory(11-sdl/2-advanced-camera)
add_subdirectory(12-sdl)
#if (NOT ${PROJECT_SOURCE_DIR} STREQUAL ${CMAKE_CURRENT_BINARY_DIR})
#	file(COPY "${PROJECT_SOURCE_DIR}/res" DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
#endif()

