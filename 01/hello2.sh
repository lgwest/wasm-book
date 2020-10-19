#!/usr/bin/bash

emcc hello.c --shell-file new_shell.html --emrun -o hello2.html
emrun --browser firefox hello2.html

