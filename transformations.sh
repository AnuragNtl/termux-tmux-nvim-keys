#!/bin/bash

tr_tmux_prefix() {
    echo $1 | sed "s/TMUX_PREFIX/$2/g"
}

tr_tmux_command() {
    if echo "$1" | grep "TMUX_NEW_WINDOW_COMMAND" > /dev/null
    then
        echo "$1" | sed "s/TMUX_NEW_WINDOW_COMMAND/$2 c . /g"
    else
        echo "$1"
    fi
}

tr_single_key() {
    if echo $1 | grep '^{' > /dev/null
    then
        echo "$1"
    else
        echo "\"$1\""
    fi
}

transforms="tr_single_key tr_tmux_prefix tr_tmux_command"

