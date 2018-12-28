#source /opt/ros/kinetic/setup.bash
#source ~/catkin_ws/devel/setup.bash

# kokokara pyenv
#export PYTHONPATH=$PYTHONPATH:$ROS_ROOT/core/roslib/src

#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

# kokomade

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
	}
function promps {
    local  BLUE="\[\e[1;34m\]"
    local  RED="\[\e[1;31m\]"
    local  GREEN="\[\e[1;32m\]"
    local  WHITE="\[\e[00m\]"
    local  GRAY="\[\e[1;37m\]"

    case $TERM in
        xterm*) TITLEBAR='\[\e]0;\W\007\]';;
        *)      TITLEBAR="";;
	    esac
    local BASE="\u@\h"
    PS1="${TITLEBAR}${WHITE}${BASE}${WHITE}:${GRAY}\w${BLUE}\$(parse_git_branch)${WHITE}\$${WHITE} "
}
promps

#export PATH="$PYENV_ROOT/versions/anaconda3-4.2.0/bin:$PATH"

# ROS2
source /opt/ros/crystal/setup.bash
