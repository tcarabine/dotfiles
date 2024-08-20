autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
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

export FUNCTIONS_CORE_TOOLS_TELEMETRY_OPTOUT=1
eval "$(/Users/tom.carabine/.local/bin/mise activate zsh)"

# Add in auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add in aws completion
complete -C '/usr/local/bin/aws_completer' aws
