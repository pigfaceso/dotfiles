# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export PATH

export HISTFILE="$HOME/.bash_history"
export HISTCONTROL="erasedups:ignoreboth"
export HISTFILESIZE=-1
export HISTSIZE=-1
export HISTIGNORE="..:...:....:pwd:ls:l:cd:clear:exit:history:hostname:date:vi:vim:nvim:make:tmux-sessionizer"
export SUDO_EDITOR=vi
export EDITOR=nvim
export VISUAL=nvim
export WWW_HOME="https://lite.duckduckgo.com/lite/"

# [[ -f $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh ]] && source "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
