#!/usr/bin/bash

em++ main.cpp ship.cpp enemy_ship.cpp player_ship.cpp projectile.cpp \
	projectile_pool.cpp collider.cpp \
	-o collider.html \
	-std=c++17 \
	--preload-file sprites \
	-s USE_WEBGL2=1 \
	-s NO_EXIT_RUNTIME=1 \
	-s USE_SDL=2 \
	-s USE_SDL_IMAGE=2 \
	-s SDL2_IMAGE_FORMATS=["png"]

echo "start python webserver and visit localhost:8000/game_objects.html"
echo "python -m http.server"

