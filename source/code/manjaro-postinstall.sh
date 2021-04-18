#!/usr/bin/env bash

# First phase system setup with services
sudo pikaur -S --noconfirm --needed docker
sudo systemctl enable --now fstrim.timer
sudo systemctl enable --now docker.service

# Install the rest
# Check pkgs.txt before running the line below
sed 's/#.*$//' pkgs.txt | xargs sudo pikaur -S --noconfirm --needed
