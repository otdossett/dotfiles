#!/bin/bash

rm ~/.config/hypr
rm ~/.config/waybar
rm ~/.config/kitty
rm ~/.config/wofi
rm ~/.config/nvim

ln -sf ~/personal/dotfiles/purple/hypr ~/.config/hypr
ln -sf ~/personal/dotfiles/purple/waybar ~/.config/waybar
ln -sf ~/personal/dotfiles/purple/kitty ~/.config/kitty
ln -sf ~/personal/dotfiles/purple/wofi ~/.config/wofi
ln -sf ~/personal/dotfiles/purple/nvim ~/.config/nvim

pkill hyprpaper
nohup hyprpaper >/dev/null 2>&1 &

pkill waybar
nohup waybar >/dev/null 2>&1 &
