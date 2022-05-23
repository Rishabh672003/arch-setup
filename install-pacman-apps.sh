#!/bin/sh
pacman -S --needed $(echo $(cat packages-pacman | cut -d' ' -f1))

