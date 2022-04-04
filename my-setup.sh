#my setup
pacman -Qq > packages
yay -S --needed $(echo $(cat packages | cut -d' ' -f1))

