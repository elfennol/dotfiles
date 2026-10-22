# Dash compatible

# Aliases
. "$MY_CONFIG_SH"/aliases.sh

# Explicit bright blue (94) instead of bold+normal blue (01;34): some terminals
# (e.g. herdr) don't brighten bold colors the way xterm does by default.
# (See also alternative PS1 with a lighter blue, that goes hand in hand)
# Must live here (not ~/.profile):
#   - /etc/bash.bashrc runs `eval "$(dircolors -b)"` on every interactive shell
#   - depending on the Linux distribution
# So a one-time override in ~/.profile would get silently wiped.
#export LS_COLORS="${LS_COLORS}:di=01;94"

# Wonderful prompt ;)
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w (\D{%T})\[\033[00m\]\[\033[0;33m\]`__git_ps1`\[\033[00m\]\n\[\033[0;36m\]>\[\033[00m\] '
# Alternative with a lighter blue, that goes hand in hand with the lighter LS_COLORS.
# PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;94m\]\w (\D{%T})\[\033[00m\]\[\033[0;33m\]`__git_ps1`\[\033[00m\]\n\[\033[0;36m\]>\[\033[00m\] '

# fzf
if [ -x "$(command -v fzf)" ]; then
  . "$MY_CONFIG_SH"/fzf.sh
fi
