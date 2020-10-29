#!/usr/bin/bash

em++ emitter.cpp particle.cpp point.cpp basic_particle.cpp \
	-o particle.html \
	-std=c++17 \
	--shell-file basic_particle_shell.html \
	-s USE_WEBGL2=1 \
	-s NO_EXIT_RUNTIME=1 \
	-s USE_SDL=2 \
	-s USE_SDL_IMAGE=2 \
	-s SDL2_IMAGE_FORMATS=["png"] \
	-s EXPORTED_FUNCTIONS="['_add_emitter', '_update_emitter', '_main']" \
	-s EXTRA_EXPORTED_RUNTIME_METHODS="['cwrap', 'ccall']" \
	-s FORCE_FILESYSTEM=1

echo "start python webserver and visit localhost:8000/particle.html"
echo "python -m http.server"

