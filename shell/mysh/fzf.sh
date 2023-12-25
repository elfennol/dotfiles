# Dash compatible

# fzf functions

## git checkout branch
gco() {
  local branches branch
  branches=$(git --no-pager branch) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout "$(echo "$branch" | sed "s/.* //")"
}

## git commit browser
ggh() {
  git log --graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"\
  |\
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort --bind "ctrl-m:execute:
      (grep -o '[a-f0-9]\{7\}' | head -1 | xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
          {}
FZF-EOF"
}
