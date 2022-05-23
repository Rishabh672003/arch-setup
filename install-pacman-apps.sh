#!/bin/sh
yay -S --needed $(echo $(cat packages-pacman | cut -d' ' -f1))

