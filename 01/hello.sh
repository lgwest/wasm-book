#!/usr/bin/bash

emcc hello.c --emrun -o hello.html
emrun --browser firefox hello.html

