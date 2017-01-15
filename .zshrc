# .zshrc: interactive shell items

# Ignore if non-interactive
[ -z "$PS1" ] && return

# Source if file exists and is readable
sourceie () {
  [ -r "$1" ] && source "$1"
}

# Prompt string
PS1="%n@%m:%~\$ "
HOSTNAME=$(hostname)
 
# zsh doesn't source .profile if .zshrc is present
source "$HOME/.profile"

source "$HOME/.shrc"
sourceie "$HOME/.shrc.local"

# Emacs/vim mode
bindkey -e
#bindkey -v

# zsh options
setopt correct
autoload -U compinit promptinit
compinit
promptinit
