plugins=(git)

export EDITOR='nvim'

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

# legacy
alias status='git status'
alias branch="git branch"
alias mbranch='git branch | grep "\*"'
alias co="git checkout"
alias conew="git checkout -b"
alias gitac='git add . && git commit -m'

alias editzsh='hx ~/.zshrc'
alias srczsh='source ~/.zshrc'

alias c='clear'
alias ..='..'
alias ...='../..'
alias ....='../../..'

mkcdir() {
    mkdir -p -- "$1" && cd -P -- "$1"
}

bindkey -v

# awesome little function that changes the cursor based in vim mode
# https://www.reddit.com/r/vim/comments/mxhcl4/setting_cursor_indicator_for_zshvi_mode_in/
function zle-keymap-select () {
    case $KEYMAP in
    vicmd) echo -ne '\e[1 q';; # block
    viins|main) echo -ne '\e[5 q';; # beam
    esac
}

zle -N zle-keymap-select

zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}

zle -N zle-line-init

echo -ne '\e[5 q' # Use beam shape cursor on startup.

preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
