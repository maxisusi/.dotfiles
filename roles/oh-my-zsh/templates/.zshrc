#-------------------------------
## THEME 
#-------------------------------

ZSH_THEME="robbyrussell"

#-------------------------------
## CONFIG 
#-------------------------------

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# BREW to $PATH
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# NVM to $PATH
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Path to your oh-my-zsh installation.
export ZSH="/Users/maxbalej/.oh-my-zsh"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#-------------------------------
## PLUGINS 
#-------------------------------

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting z)
source $ZSH/oh-my-zsh.sh

#-------------------------------
## ALIAS 
#-------------------------------

# General
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim  ~/.oh-my-zsh"
alias cat="bat"
alias ls="exa"

# Docker
alias k="kubectl"
alias dps="docker ps"
alias di="docker inspect"
alias dimg="docker images"

# Github
alias gaa="git add ."
alias gap="git add -p"
alias gs="git status"
alias gp="git push"
alias gcfb="git cherry -v"
alias gpl="git pull"

# Brew
alias brewd="brew bundle dump --file=~/dotfile/ --force"

# Gammadia
alias mu="make up"
alias md="make down"
alias mr="make restart"
alias mtr="make test react"

#-------------------------------
## RANDOM 
#-------------------------------

# Display a random quote 
curl -s 'https://api.quotable.io/random' | jq -r '.content'
