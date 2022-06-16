#!/bin/env sh

sudo true;
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com &&
sudo pacman-key --lsign-key FBA220DFC880C036 &&
sudo pacman --needed --noconfirm -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'&&
sudo echo "[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist" | sudo tee -a /etc/pacman.conf &&
sudo pacman -Sy

