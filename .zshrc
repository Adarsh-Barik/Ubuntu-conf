# This file is created by Adarsh (Dhabba) with the help of Oh-my-zsh..enjoy :)
# Path to your oh-my-zsh configuration.
#
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
ZSH=$HOME/.oh-my-zsh



# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="xiong-chiamiov"
ZSH_THEME="af-magic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

#DEBIAN_PREVENT_KEYBOARD_CHANGES=yes

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump git command-not-found  battery zsh-syntax-highlighting history-substring-search colored-man)
#plugins=(autojump git command-not-found  battery history-substring-search colored-man)
#plugins=(autojump git  command-not-found  battery zsh-syntax-highlighting  colored-man)
source $ZSH/oh-my-zsh.sh

# Customize to your needs..
alias c='clear'
alias matlab='/usr/local/MATLAB/R2011a/bin/matlab'
alias setup='python setup.py build_ext --inplace'
alias mpd='mpd ~/.mpdconf'
alias nmpc='ncmpcpp'
alias awe-suspend='dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend > /dev/null'
alias awe-restart='dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Restart > /dev/null'
alias awe-shutdown='dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Stop > /dev/null'
#alias latexmkupdate="grep -l '\\documentclass' *tex | xargs latexmk -pdfps -pvc -silent"
alias latexmkupdate='latexmk -pdfps -pvc -silent'
alias eclipse-java='c=`pwd`; cd /home/adarsh/eclipse-java/; ./eclipse &; cd $c; unset c'
alias eclipse-cpp='c=`pwd`; cd /home/adarsh/eclipse-cpp/; ./eclipse &; cd $c; unset c'

## For proxy
#source $ZSH/plugins/history-substring-search/history-substring-search.zsh
#
unsetopt correctall
export EDITOR=vim

#### Using custom directory in tex Path
#declare -x TEXINPUTS=.:$HOME/tex_custom:

# LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/lib/
