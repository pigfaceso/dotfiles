#!/usr/bin/env bash

LOCAL_CONFIG_DIR="$HOME/.config"
LOCAL_BIN_DIR="$HOME/.local/bin"

# Local binary/script path
rm $LOCAL_BIN_DIR/tmux-sessionizer
rm $LOCAL_BIN_DIR/tmux-start

# Home path
rm $HOME/.git-prompt.sh
rm $HOME/.bash_profile
rm $HOME/.bashrc
rm $HOME/.nnn

# Config path
rm $LOCAL_CONFIG_DIR/sway
rm $LOCAL_CONFIG_DIR/waybar
rm $LOCAL_CONFIG_DIR/dunst
rm $LOCAL_CONFIG_DIR/alacritty
rm $LOCAL_CONFIG_DIR/foot
rm $LOCAL_CONFIG_DIR/rofi
rm $LOCAL_CONFIG_DIR/tmux
rm $LOCAL_CONFIG_DIR/nvim
