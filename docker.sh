#!/bin/bash

sudo pacman -Sy docker docker-compose --noconfirm

sudo usermod -aG docker ${USER}

sudo systemctl enable docker
sudo systemctl start docker