autoload -Uz compinit
if [[ -n $HOME/.cache/zsh/zcompdump-$ZSH_VERSION(#qN.mh+24) ]]; then
compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"
else
compinit -C;
fi; 

eval "$(zoxide init zsh)"
alias cd="z"

eval "$(starship init zsh)"
