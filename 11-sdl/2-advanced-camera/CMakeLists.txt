project(11-2-advanced-camera)

configure_file(${CONFIG_DIR}/current_dir.h.in ${CMAKE_CURRENT_SOURCE_DIR}/current_dir.h)

find_package(SDL2_TTF REQUIRED)
include_directories(${SDL2_TTF_INCLUDE_DIR})

find_package(SDL2_IMAGE REQUIRED)
include_directories(${SDL2_IMAGE_INCLUDE_DIR})

add_executable(11-2-advanced-camera
asteroid.cpp
camera.cpp
collider.cpp
current_dir.h
emitter.cpp
enemy_ship.cpp
finite_state_machine.cpp
game.hpp
locator.cpp
main.cpp
particle.cpp
player_ship.cpp
projectile.cpp
projectile_pool.cpp
range.cpp
render_manager.cpp
shield.cpp
ship.cpp
star.cpp
vector.cpp
)

target_link_libraries(11-2-advanced-camera ${SDL2_LIBRARY} ${SDL2_TTF_LIBRARY} ${SDL2_IMAGE_LIBRARY})
#install(TARGETS Lesson6 RUNTIME DESTINATION ${BIN_DIR})
#file(COPY "${PROJECT_SOURCE_DIR}/sprites" DESTINATION ${CMAKE_CURRENT_BINARY_DIR})

