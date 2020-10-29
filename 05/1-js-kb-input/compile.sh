#!/usr/bin/bash

emcc jskey.c -o jskey.html --shell-file jskey_shell.html \
	-s NO_EXIT_RUNTIME=1 \
	-s EXPORTED_FUNCTIONS="['_main', '_press_up', '_press_down', '_press_left', '_press_right', '_release_up', '_release_down', '_release_left', '_release_right']" \
	-s EXTRA_EXPORTED_RUNTIME_METHODS="['cwrap', 'ccall']"

echo "start python webserver and visit localhost:8000/jskey.html"
echo "python -m https.server"

