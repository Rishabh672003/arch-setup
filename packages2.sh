#!/bin/bash
#  pacman -S $(echo $(cat yourfilename | cut -d' ' -f1))
set -e

ALL=$(pacman --query --quiet --explicit)

BASE_DEVEL=$(pacman --query --quiet --groups base-devel)

echo "$ALL
$BASE
$BASE_DEVEL" | sort | uniq -u
