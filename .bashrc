#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
stty -ixon # Disable ctrl-s and ctrl-q.
HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
alias f="$FILE" \
        e="$EDITOR" \
        v="$EDITOR" \
        vim="$EDITOR" \
        grep="grep --color=auto" \
        diff="diff --color=auto" \
        lsp="yay -Qett --color=always | less" \
        ffmpeg="ffmpeg -hide_banner" \
        rem="yay -Rns" \
        clean="yay -Rns $(yay -Qtdq) ;sudo paccache -rk1" \
        ls="exa -l -h --group-directories-first -s name --color=always" \
        la="exa -a -l -h --group-directories-first -s name --color=always" \
        upload="aws s3 cp" \
