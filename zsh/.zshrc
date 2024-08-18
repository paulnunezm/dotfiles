export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Tokio night color theme for FZF 
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--color=fg:#c0caf5,bg:#1a1b26,hl:#ff9e64 \
--color=fg+:#c0caf5,bg+:#292e42,hl+:#ff9e64 \
--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff \
--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a"

alias zshconfig="nvim ~/.zshrc"

# default command remaps 
alias ls="eza --icons"
alias cd="z"

# Android dev aliases
alias gw="./gradlew"
alias dtkt="./gradlew detekt"
alias dtktb="./gradlew detektBaseline"

# git aliases with fzf 
alias gitco="git branch \
  | fzf --height=15 --border='rounded' \
  | xargs git checkout"

alias gitcor="git branch -a \
  | grep 'remotes' \
  | sed 's/remotes\/origin\///' \
  | fzf --height=15 --border='rounded' \
  | xargs -I {} git checkout '{}'"

alias gitbd="git branch \
  | fzf --multi --height=15 --border='rounded' \
  | xargs -I {} git branch -D '{}'"

# ssh config
eval $(ssh-agent)

plugins=(git zsh-autosuggestions adb zsh-syntax-highlighting)

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Setup fzf key bindings and fuzzy completion
source <(fzf --zsh)

# zoxided: like cd but ovepowered
eval "$(zoxide init zsh)"

eval "$(starship init zsh)"

