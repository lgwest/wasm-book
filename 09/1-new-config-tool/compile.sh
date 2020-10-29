#!/usr/bin/bash

em++ emitter.cpp particle.cpp point.cpp advanced_particle.cpp \
	-o particle.html \
	-std=c++17 \
	--shell-file advanced_particle_shell.html \
	-s NO_EXIT_RUNTIME=1 \
	-s USE_WEBGL2=1 \
	-s USE_SDL=2 \
	-s USE_SDL_IMAGE=2 \
	-s SDL2_IMAGE_FORMATS=["png"] \
	-s NO_EXIT_RUNTIME=1 \
	-s EXPORTED_FUNCTIONS="['_add_emitter', '_update_emitter', '_main']" \
	-s EXTRA_EXPORTED_RUNTIME_METHODS="['cwrap', 'ccall']" \
	-s FORCE_FILESYSTEM=1

echo "start webserver and open localhost:8000/advanced_particle_shell.html"
echo "python -m http.server"

