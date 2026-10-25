#!/usr/bin/env bash

DOTFILES_DIR="$HOME/.config/dotfiles"
LOCAL_CONFIG_DIR="$HOME/.config"
LOCAL_BIN_DIR="$HOME/.local/bin"

# Local binary/script path
ln -s $DOTFILES_DIR/scripts/tmux-sessionizer $LOCAL_BIN_DIR
ln -s $DOTFILES_DIR/scripts/tmux-start $LOCAL_BIN_DIR

# Home path
ln -s $DOTFILES_DIR/bash/.git-prompt.sh $HOME
ln -s $DOTFILES_DIR/bash/.bash_profile $HOME
ln -s $DOTFILES_DIR/bash/.bashrc $HOME

# Config path
ln -s $DOTFILES_DIR/sway $LOCAL_CONFIG_DIR
ln -s $DOTFILES_DIR/waybar $LOCAL_CONFIG_DIR
ln -s $DOTFILES_DIR/dunst $LOCAL_CONFIG_DIR
ln -s $DOTFILES_DIR/alacritty $LOCAL_CONFIG_DIR
ln -s $DOTFILES_DIR/foot $LOCAL_CONFIG_DIR
ln -s $DOTFILES_DIR/rofi $LOCAL_CONFIG_DIR
ln -s $DOTFILES_DIR/lazygit $LOCAL_CONFIG_DIR
ln -s $DOTFILES_DIR/tmux $LOCAL_CONFIG_DIR
ln -s $DOTFILES_DIR/nvim $LOCAL_CONFIG_DIR
ln -s $DOTFILES_DIR/nnn/nnn.conf $LOCAL_CONFIG_DIR/nnn
ln -s $DOTFILES_DIR/nnn/plugins $LOCAL_CONFIG_DIR/nnn
