# Dash compatible

# Aliases
. "$MY_CONFIG_SH"/aliases.sh

# Wonderful prompt ;)
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w (\D{%T})\[\033[00m\]\[\033[0;33m\]`__git_ps1`\[\033[00m\]\n\[\033[0;36m\]>\[\033[00m\] '

# fzf
if [ -x "$(command -v fzf)" ]; then
  . "$MY_CONFIG_SH"/fzf.sh
fi
