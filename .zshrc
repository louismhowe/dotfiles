# .zshrc: interactive shell items

# Ignore if non-interactive
[ -z "$PS1" ] && return
 
# Prompt string
PS1="%n@%m:%~\$ "
HOSTNAME=$(hostname)
 
# zsh doesn't source .profile if .zshrc is present
source "$HOME/.profile"

source "$HOME/.shrc"

# Emacs/vim mode
bindkey -e
#bindkey -v

# zsh options
setopt correct
autoload -U compinit promptinit
compinit
promptinit
