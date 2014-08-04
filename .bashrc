# .bashrc: interactive shell items

# Ignore if non-interactive
[ -z "$PS1" ] && return

# Prompt string
PS1="\u@\h:\w\\$ "

source "$HOME/.shrc"
