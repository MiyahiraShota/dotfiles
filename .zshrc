# LANG
export LANG=ja_JP.UTF-8

# ビープ音鳴らさない
setopt nobeep

# 補完
autoload -U compinit
compinit

#LS_COLORSを設定しておく
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=46:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -GF"
alias gls="gls --color"
alias co="commit"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# PROMPT
autoload colors
colors
#PROMPT="%{$fg[green]%}%m%(!.#.$) %{$reset_color%}"
#PROMPT="
# %{${fg[cyan]}%}%~%{${reset_color}%} 
# [%n@%m]"
#PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
PROMPT2='[%n]> '
SPROMPT="%{$fg[red]%}correct: %R -> %r [n/y/a/e]? %{$reset_color%}"
#RPROMPT="%{$fg[cyan]%}[%~]%{$reset_color%}"

#PROMPT git
autoload -Uz vcs_info
setopt prompt_subst

#zstyle ':vcs_info:*' enable git svn
#zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a] '
#zstyle ':vcs_info:*' formats       '(%s)-[%b] '
#zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b:%r'

#zstyle ':completion:*' menu select
#zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

zstyle ':vcs_info:git:*' check-for-changes true
 #formats 設定項目で %c,%u が使用可
zstyle ':vcs_info:git:*' stagedstr "%F{green}!"
 #commit されていないファイルがある
zstyle ':vcs_info:git:*' unstagedstr "%F{magenta}+"
 #add されていないファイルがある
zstyle ':vcs_info:*' formats "%F{cyan}%c%u(%b)%f"
 #通常
zstyle ':vcs_info:*' actionformats '[%b|%a]'
 #rebase 途中,merge コンフリクト等 formats 外の表示

precmd () { vcs_info }

# color
blue_g1='%{[38;5;082m%}'
blue_g2='%{[38;5;085m%}'
blue_g3='%{[38;5;087m%}'
reset='%{[0m%}'

# color
blue_g1='%{[38;5;082m%}'
blue_g2='%{[38;5;085m%}'
blue_g3='%{[38;5;087m%}'
reset='%{[0m%}'

PROMPT="
 %{${fg[cyan]}%}%~%{${reset_color}%} ${vcs_info_msg_0_}
 %n@%m ${blue_g1}❯${blue_g2}❯${blue_g3}❯${reset} "

alias ssh='ssh -A'

# チャットワークcommand
alias chiru='curl -X POST -H "X-ChatWorkToken: 0d90648bebe7f1ce79e99d0a9b281562" -d "body=お昼に出ます" "https://api.chatwork.com/v2/rooms/94028134/messages"'

alias ergomap='less /Volumes/DropBox/Dropbox\ \(個人\)/develop/ergodox/keyboards/ergodox_ez/keymaps/ms_custom/keymap.c'
