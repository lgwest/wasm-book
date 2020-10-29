#!/usr/bin/bash

emcc game_loop.c -o gameloop.html --preload-file sprites \
	-s NO_EXIT_RUNTIME=1 \
	-s USE_SDL=2 \
	-s USE_SDL_IMAGE=2 \
	-s SDL2_IMAGE_FORMATS=["png"] \
	-s EXTRA_EXPORTED_RUNTIME_METHODS="['cwrap', 'ccall']"

echo "start python webserver and visit localhost:8000/gameloop.html"
echo "python -m http.server"

