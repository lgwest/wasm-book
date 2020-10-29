#!/usr/bin/bash

emcc keyboard_move.c -o keyboard_move.html --preload-file sprites \
	-s USE_SDL=2 \
	-s USE_SDL_IMAGE=2 \
	-s SDL2_IMAGE_FORMATS=["png"]

echo "start python webserver and visit localhost:8000/keyboard_move.html"
echo "python -m http.server"

