#
# ~/.bashrc
#

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx ~/.config/X11/.xinitrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# nnn configuration
export NNN_BMS='c:~/.config;d:~/Downloads;g:~/Desktop/GT/;m:~/Music;q:~/Desktop/GT/Fall 22/CS4420;w:~/Desktop/GT/Fall 22/CS4641;e:~/Desktop/GT/Fall 22/CS4726;r:~/Desktop/GT/Fall 22/PHYS2212;t:~/Desktop/GT/Fall 22/research;h:/home/groth;z:/run/media/groth/ZARKEY;B:/run/media/groth/BOX'
n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, either remove the "export" as in:
    #    NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    #    (or, to a custom path: NNN_TMPFILE=/tmp/.lastd)
    # or, export NNN_TMPFILE after nnn invocation
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export EDITOR="nvim"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}
