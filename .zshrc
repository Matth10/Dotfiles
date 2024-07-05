# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship.toml

export EDITOR=/opt/homebrew/bin/nvim

# Git
alias a="!git status --short | peco | awk '{print $2}' | xargs git add"
alias d='diff'
alias co='checkout'
alias ci='commit'
alias ca='commit -a'
alias ps="!git push origin $(git rev-parse --abbrev-ref HEAD)"
alias pl="!git pull origin $(git rev-parse --abbrev-ref HEAD)"
alias st='status'
alias br='branch'
alias ba='branch -a'
alias bm='branch --merged'
alias bn='branch --no-merged'
alias df="!git hist | peco | awk '{print $2}' | xargs -I {} git diff {}^ {}"
alias hist='log --pretty=format:\"%Cgreen%h %Creset%cd %Cblue[%cn] %Creset%s%C(yellow)%d%C(reset)\" --graph --date=relative --decorate --all'
alias llog='log --graph --name-status --pretty=format:\"%C(red)%h %C(reset)(%cd) %C(green)%an %Creset%s %C(yellow)%d%Creset\" --date=relative'
alias open="!hub browse"
alias type='cat-file -t'
alias dump='cat-file -p'

# Docker
alias dco="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker ps -l -q"
alias dx="docker exec -it"

alias cl='clear'

# FZF
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
