#!/usr/bin/bash

em++ collider.cpp emitter.cpp enemy_ship.cpp particle.cpp player_ship.cpp \
	point.cpp projectile_pool.cpp projectile.cpp ship.cpp main.cpp \
	-o particle_system.html \
	--preload-file sprites \
	-std=c++17 \
	-s USE_WEBGL2=1 \
	-s USE_SDL=2 \
	-s USE_SDL_IMAGE=2 \
	-s SDL2_IMAGE_FORMATS=["png"]

echo "start python web-server and load page: localhost:8000/particle_system.html"
echo "python -m http.server"

