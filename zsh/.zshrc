export ZSH="$HOME/.oh-my-zsh"

case "$TERM_PROGRAM" in
  'iTerm.app')
    ZSH_THEME="agnoster"
    ;;
  default)
    ZSH_THEME=""
    ;;
esac

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias ll="ls -la"

alias now="date +%T"

alias py="python"
alias pip="pip3"

alias cve="python -m venv venv"
alias ave="source $HOME/Developer/.venv/bin/activate"
alias dve="deactivate"

alias dev="cd ~/Developer"
alias home="cd ~/"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
