#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

[ -d work ] && rm -r work
[ -d out ] && rm -r out

mkarchiso -v -w work -o out archiso
