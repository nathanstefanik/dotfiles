#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

XDG_CONFIG_HOME=/home/euler/.config

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/euler/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/euler/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/euler/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/euler/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/home/euler/bin/micromamba";
export MAMBA_ROOT_PREFIX="/home/euler/micromamba";
__mamba_setup="$('/home/euler/bin/micromamba' shell hook --shell bash --prefix '/home/euler/micromamba' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/home/euler/micromamba/etc/profile.d/mamba.sh" ]; then
        . "/home/euler/micromamba/etc/profile.d/mamba.sh"
    else
        export PATH="/home/euler/micromamba/bin:$PATH"
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<




# nnn config
export NNN_BMS='d:~/Downloads;u:/home/user/euler;g:~/Desktop/GT/;D:~/.config/dwm;m:~/Music;q:~/Desktop/GT/Spring 22/CS 4644;w:~/Desktop/GT/Spring 22/MATH 3236;e:~/Desktop/GT/Spring 22/MATH 6422;r:~/Desktop/GT/Spring 22/VIP'


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
