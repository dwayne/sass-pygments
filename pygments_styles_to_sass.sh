#!/bin/bash

mkdir -p ./styles
pygmentize -f html -S $1 -a ".syntax" | sass-convert -s -F css -T scss > ./styles/$1.scss
