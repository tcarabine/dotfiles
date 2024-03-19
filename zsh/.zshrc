autoload -Uz compinit
if [[ -n $HOME/.cache/zsh/zcompdump-$ZSH_VERSION(#qN.mh+24) ]]; then
compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"
else
compinit -C;
fi; 

eval "$(zoxide init zsh)"
alias cd="z"

eval "$(starship init zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tom.carabine/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tom.carabine/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tom.carabine/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tom.carabine/google-cloud-sdk/completion.zsh.inc'; fi
