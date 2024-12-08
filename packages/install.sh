#!/usr/bin/env bash
set -e

# Update system
sudo pacman -Syu --noconfirm

# Install yay
git clone https://aur.archlinux.org/yay.git /tmp/yay
(cd /tmp/yay && makepkg -si --noconfirm)

# Install packages
# Install from official repos
sudo pacman -S --noconfirm "$(cat packages.txt)"
# Install from AUR
yay -S --noconfirm "$(cat aur-packages.txt)"

# Change shell to zsh
chsh -s /usr/bin/zsh

# set wallpaper
mkdir -p "$HOME/Pictures/Wallpapers"
cp "$HOME/dotfiles/wallpapers/*" "$HOME/Pictures/Wallpapers"
