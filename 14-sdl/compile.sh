#!/usr/bin/bash

em++ asteroid.cpp audio.cpp camera.cpp collider.cpp emitter.cpp enemy_ship.cpp \
	finite_state_machine.cpp locator.cpp main.cpp particle.cpp player_ship.cpp \
	projectile_pool.cpp projectile.cpp range.cpp render_manager.cpp shield.cpp \
	ship.cpp star.cpp ui_button.cpp ui_sprite.cpp vector.cpp \
	-o ui.html \
	--preload-file audio \
	--preload-file sprites \
	-std=c++17 \
	-s USE_WEBGL2=1 \
	-s USE_SDL=2 -s \
	USE_SDL_IMAGE=2 \
	-s SDL2_IMAGE_FORMATS=["png"]

echo "start python web-server and load page: localhost:8000/ui.html"
echo "python -m http.server"

