#!/bin/bash

sudo pacman -Sy libvirt virt-manager qemu-desktop dnsmasq iptables-nft --noconfirm --ask 4

sudo usermod -aG libvirt-qemu kacper

sudo systemctl enable libvirtd.socket
sudo systemctl start libvirtd.socket
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service