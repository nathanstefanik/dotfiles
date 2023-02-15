#
# ~/.bashrc
#

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx ~/.config/X11/.xinitrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias hx=helix
PS1='[\u@\h \W]\$ '

SINK=$( pactl list short sinks | grep RUNNING | sed -e 's,^\([0-9][0-9]*\)[^0-9].*,\1,' | head -n 1 )
BROWSER=firefox
export EDITOR=helix

lfcd () {
    tmp="$(mktemp)"
    # `command` is needed in case `lfcd` is aliased to `lf`
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

alias lf=lfcd
