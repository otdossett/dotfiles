#!/bin/bash
rm ~/.config/hypr
rm ~/.config/waybar
rm ~/.config/kitty
rm ~/.config/wofi
rm ~/.config/nvim

ln -sf ~/personal/dotfiles/out-west/hypr ~/.config/hypr
ln -sf ~/personal/dotfiles/out-west/waybar ~/.config/waybar
ln -sf ~/personal/dotfiles/out-west/kitty ~/.config/kitty
ln -sf ~/personal/dotfiles/out-west/wofi ~/.config/wofi
ln -sf ~/personal/dotfiles/out-west/nvim ~/.config/nvim

pkill hyprpaper
nohup hyprpaper >/dev/null 2>&1 &

pkill waybar
nohup waybar >/dev/null 2>&1 &
