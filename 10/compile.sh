#!/usr/bin/bash

em++ asteroid.cpp collider.cpp emitter.cpp enemy_ship.cpp finite_state_machine.cpp \
	main.cpp particle.cpp player_ship.cpp projectile_pool.cpp projectile.cpp \
	range.cpp shield.cpp ship.cpp star.cpp vector.cpp \
	-o ai.html \
	--preload-file sprites \
	-std=c++17 \
	-s USE_WEBGL2=1 \
	-s USE_SDL=2 \
	-s USE_SDL_IMAGE=2 \
	-s SDL2_IMAGE_FORMATS=["png"]

echo "start python web-server and go to localhost:8000/ai.html"
echo "python -m http.server"

