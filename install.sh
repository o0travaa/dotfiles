#!/bin/bash

PKGS=(
  alacritty
  fish
  hyprland
  waybar
  wlogout
  wofi
  swaybg
  hyprlock
  grim
  wl-clipboard
  ttf-jetbrains-mono-nerd
)

sudo pacman -Syu --needed "${PKGS[@]}"

mkdir -p ~/.config_backup

if [ -d "$HOME/.config" ]; then
  cp -r "$HOME/.config" "$HOME/.config_backup/"
fi

mkdir -p "$HOME/.config"
cp -r .config/* "$HOME/.config/"

mkdir -p "$HOME/Documents/Wallpapers"
if [ -f "./assets/wallhaven-qr9jml.jpg" ]; then
  cp "./assets/wallhaven-qr9jml.jpg" "$HOME/Documents/Wallpapers/"
fi

echo "Installation completed successfully!"
