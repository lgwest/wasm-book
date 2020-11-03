project(13-sdl)

find_package(SDL2_ttf REQUIRED)
include_directories(${SDL2_TTF_INCLUDE_DIR})

find_package(SDL2_image REQUIRED)
include_directories(${SDL2_IMAGE_INCLUDE_DIR})

add_executable(Lesson6 src/main.cpp)
target_link_libraries(Lesson6 ${SDL2_LIBRARY} ${SDL2_TTF_LIBRARY})
install(TARGETS Lesson6 RUNTIME DESTINATION ${BIN_DIR})

