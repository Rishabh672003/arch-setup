#!/bin/sh
yay -S --needed $(echo $(cat packages-aur | cut -d' ' -f1))

