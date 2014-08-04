# .profile: login shell items (environment variables and startup programs)

# Source if file exists and is readable
sourceie () { 
  [ -r "$1" ] && source "$1"
}

# Reset path
export PATH="/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# Source system/host-specific profiles
sourceie ".profile.${HOSTNAME}"

# bash doesn't automatically source .bashrc
[ -n "$BASH_VERSION" ] && sourceie "$HOME/.bashrc"
