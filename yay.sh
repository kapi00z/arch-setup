#!/bin/bash

pacman -Qi base-devel &> /dev/null
res=$?

if [ "$res" -eq "0" ]
then
    echo "Base-devel installed"
else
    echo "Installing base-devel"
    sudo pacman -Sy base-devel --noconfirm
fi

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si --noconfirm

cd ..
rm -rf yay-bin