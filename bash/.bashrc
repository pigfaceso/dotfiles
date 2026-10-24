# .bashrc
[[ $- == *i* ]] || return

# Source file
[[ -f /etc/bashrc ]] && source /etc/bashrc
[[ -f $HOME/.git-prompt.sh ]] && source $HOME/.git-prompt.sh
set -o allexport
[[ -f $HOME/.api-keys ]] && source $HOME/.api-keys
[[ -f $HOME/.config/nnn/nnn.conf ]] && source $HOME/.config/nnn/nnn.conf
set +o allexport
[[ -n $(command -v direnv) ]] && eval "$(direnv hook bash)"
[[ -n $(command -v fzf) ]] && eval "$(fzf --bash)"
[[ -n $(command -v zoxide) ]] && eval "$(zoxide init --cmd cd bash)"

# Disable Ctrl-s, Crtl-q default keybind (stop,resume)
stty -ixon

# Vi mode
set -o vi

# Bash shell options
shopt -s checkwinsize
shopt -s histappend

# Alias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ls="ls --color=auto --group-directories-first"
[[ -n $(command -v nvim) ]] && alias vi="nvim"
[[ -n $(command -v nvim) ]] && alias vim="nvim"
[[ -n $(command -v nnn) ]] && alias l="nnn"

# Prompt
PROMPT_COMMAND='history -a; history -c; history -r'
PS1='[\W]\[\e[2m\]$(__git_ps1 " git:(%s)")\[\e[0m\] [$?]\$ '

# Keybind
bind '"\C-f":"tmux-sessionizer\n"'

# Function
function cd() {
  __zoxide_z "$@" && ls
}

function cdi() {
  __zoxide_zi "$@" && ls
}

# Start tmux
if [[ -z $TMUX ]]; then
  tmux attach -t $USER 2> /dev/null || tmux new -s $USER
fi
