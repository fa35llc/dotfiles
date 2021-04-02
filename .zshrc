autoload -Uz vcs_info colors history-search-end
colors

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT="%F{cyan} \$vcs_info_msg_0_ %f "
zstyle ':vcs_info:git:*' formats '%b'

export export LANG=ja_JP.UTF-8
plugins=(git)
#source ~/.zsh-theme.sh
source ~/.zsh_histignore
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
export CLICOLOR=1;
export LSCOLORS=gxfxcxdxbxegedabagacad;
export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

setopt auto_param_slash
setopt mark_dirs
setopt auto_menu
setopt interactive_comments
setopt magic_equal_subst
setopt complete_in_word
setopt print_eight_bit
setopt hist_expire_dups_first
setopt extended_history
setopt print_eight_bit
setopt hist_ignore_all_dups
setopt auto_cd
setopt no_beep
# History
# setopt SHARE_HISTORY
# setopt HIST_IGNORE_ALL_DUPS
# setopt HIST_REDUCE_BLANKS
# setopt HIST_IGNORE_SPACE
# setopt HIST_IGNORE_ALL_DUPS
# setopt HIST_FIND_NO_DUPS
# setopt HIST_NO_STORE
# setopt AUTO_PUSHD
# setopt HIST_FIND_NO_DUPS

# zshaddhistory() {
#     local line=${1%%$'\n'}
#     local cmd=${line%% *}
#     [[ ${#line} -ge 5
#         && ${cmd} != (l|l[sal])
#         && ${cmd} != (cd)
#         && ${cmd} != (m|man)
#         && ${cmd} != (r[mr])
#     ]]  
# }

PROMPT="%F{magenta}%B[%n]%b %T %B[%~]%b >%f " 

#autoload -Uz history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# alias
alias l='ls -ltrG'
alias la='ls -laG'
alias ll='ls -lG'
alias ls='ls -G'

alias grep='grep --color=auto'
alias ...='cd ../../'
alias his='history -E -i 1 | fzf'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias g="git"
alias ga="git"
alias gd="git diff"
alias gp="git push"
alias gst="git status"
alias gc="git commit"

alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dc="cd ~/Documents"
alias p="cd ~/Projects"
alias pd="cd ~/Projects/Documents"

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias c="cat"

alias ip="ifconfig -a"
alias ipl="ifconfig -l "
alias getinet="ifconfig | grep inet"
alias getglobalip="curl inet-ip.info"

alias mem="top -o mem"
alias cpu="top -o cpu"

alias flashdns="sudo killall -HUP mDNSResponder"
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hiddenhidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

alias buu="echo 'brew update...' && brew update && echo 'brew upgrade...' && brew upgrade && echo 'brew cleanup...' && brew cleanup && echo 'brew doctor...' && brew doctor"

alias zshrc="vi ~/.zshrc"

alias projects='cd ~/Projects'

# Export
# export PATH="/usr/local/sbin:$PATH"
#export GO111MODULE=auto
# export GO111MODULE=on
# export GOPATH=$HOME/Projects/go
#export GOROOT=/usr/local/opt/go/libexec
# export PATH=$PATH:$GOPATH/bin
#export PATH=$PATH:$GOROOT/bin
# export PATH="/usr/local/opt/go/bin:$PATH"
# export PATH="$HOME/.cargo/bin:$PATH"
#export PATH="/usr/local/opt/php@7.3/bin:$PATH"
#export PATH="/usr/local/opt/php@7.3/sbin:$PATH"
#export ANDROID_SDK="${HOME}/Library/Android/sdk"
#export PATH=$PATH:$ANDROID_SDK/emulator
#export PATH=$PATH:$ANDROID_SDK/platform-tools

# alias kali='docker run -it --rm fa35llc-kali /bin/bash'

# Change the uLimit
# alias mode-high="ulimit -n 16384 -s 16384 -u 3000 && ulimit -a"
alias mode-high="sudo launchctl limit maxfiles 11136 65535 \
                 && sudo launchctl limit maxproc 4176 4176 \
                 && sudo launchctl limit maxproc && sudo launchctl limit maxfiles \
                 && ulimit -aH"

# To stop md_worker index
alias fix-spotlight='find . -type d -name "node_modules" -exec touch "{}/.metadata_never_index" \;'

# Wheather
# alias wheather="curl https://wttr.in/kamagaya"
# Moon
# alias moon="curl https://wttr.in/Moon"
