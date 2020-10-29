#!/usr/bin/bash

emcc keyboard.c -o keyboard.html -s USE_SDL=2

echo "start python web-server and go to: localhost:8000/keyboard.html"
echo "python -m http.server"

