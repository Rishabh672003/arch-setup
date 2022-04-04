#my setup
yay -S --needed $(echo $(cat packages | cut -d' ' -f1))

