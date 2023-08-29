#!/bin/bash

sudo pacman -Sy ansible --noconfirm

sudo mkdir -p /etc/ansible

cfg=$(cat <<EOF
[defaults]
ansible_python_interpreter=/usr/bin/python3
EOF
)

echo "$cfg" | sudo tee /etc/ansible/ansible.cfg