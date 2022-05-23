#!/bin/sh
(paclist core && paclist community && paclist extra && paclist multilib) > packages-pacman &&
pacman -Qqm > packages-aur  


