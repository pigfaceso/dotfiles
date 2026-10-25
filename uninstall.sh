#!/usr/bin/env sh

LOCAL_CONFIG_DIR="$HOME/.config"
LOCAL_BIN_DIR="$HOME/.local/bin"

# Local binary/script path
unlink $LOCAL_BIN_DIR/tmux-sessionizer
unlink $LOCAL_BIN_DIR/tmux-start

# Home path
unlink $HOME/.git-prompt.sh
unlink $HOME/.bash_profile
unlink $HOME/.bashrc
unlink $HOME/.nnn

# Config path
unlink $LOCAL_CONFIG_DIR/sway
unlink $LOCAL_CONFIG_DIR/waybar
unlink $LOCAL_CONFIG_DIR/dunst
unlink $LOCAL_CONFIG_DIR/alacritty
unlink $LOCAL_CONFIG_DIR/foot
unlink $LOCAL_CONFIG_DIR/rofi
unlink $LOCAL_CONFIG_DIR/lazygit
unlink $LOCAL_CONFIG_DIR/tmux
unlink $LOCAL_CONFIG_DIR/nvim
unlink $LOCAL_CONFIG_DIR/nnn/nnn.conf
unlink $LOCAL_CONFIG_DIR/nnn/plugins
unlink $LOCAL_CONFIG_DIR/kew/kewrc
