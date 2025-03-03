ZSH_THEME="kardan"

plugins=(git)

alias gc='git commit -m'
alias gac='git add . && git commit -m'
alias glog='git log --pretty=format:"%h :%an| %ar - %s"'
alias gpl='git pull'
alias gps='git push'
alias gr='git reset'
alias gm='git merge'
alias gmc='git add . && git merge --continue'
alias gs='git status'
alias gco="git checkout"
alias gconew="git checkout -b"
alias gb="git branch"
alias gmb='git branch | grep "\*"'
alias ga='git add .'
alias gskip='git commit -n -m'
alias gaskip='git add . && git commit -n -m'
alias gd='git diff'
alias grs='git branch -D staging && git switch staging && git pull'

alias srczsh='source ~/.zshrc'
alias editzsh='hx ~/.zshrc'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias cl="clear"

mkcdir() {
	mkdir -p -- "$1" && cd -P -- "$1"
}

PROMPT='$ '
export EDITOR="hx"
export VISUAL="$EDITOR"

