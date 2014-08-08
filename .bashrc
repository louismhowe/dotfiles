# .bashrc: interactive shell items

# Ignore if non-interactive
[ -z "$PS1" ] && return

# Source if file exists and is readable
sourceie () {
  [ -r "$1" ] && source "$1"
}

# Prompt string
PS1="\u@\h:\w\\$ "

source "$HOME/.shrc"
sourceie "$HOME/.shrc.$HOSTNAME"
