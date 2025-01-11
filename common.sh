#!/bin/bash

UPDATED=0

install_pkg() {
    if command -v "$2" > /dev/null
    then
        return
    fi
    read -r -p "$2 ($3) is not detected. would you like to install it? (Y)/n " choice
    choice="${choice:-y}"
    if [ ! "$choice" = "y" ] && [ ! "$choice" = "Y" ]
    then
        if [ "$3" = "required" ]
        then
            exit 1
        fi
        return
    fi
    if [ $UPDATED -eq 0 ]
    then
        pkg update
        UPDATED=1
    fi
    pkg install -y "$1"
}

echoerr() { 
   >&2 echo -e "\033[0;31m$*\033[0m"
}

echosuccess() { 
   >&2 echo -e "\033[0;32m$*\033[0m"
}

echodebug() { 
   >&2 echo -e "\033[1;30m$*\033[0m"
}

echoinfo() { 
   >&2 echo -e "\033[1;36m$*\033[0m"
}

