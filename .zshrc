PS1='%F{106}∑ %F{110}%c  %F{106}λ %F{300}'
function cdls () {
  ls  "$1" && cd "$1"
}
# Load completions
autoload -Uz compinit && compinit
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
