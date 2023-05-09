#!/usr/bin/env bash

# Purpose: Show a rainbow in a single line to test 24 bit color terminal support (of kitty).
#          You should see smooth color transitions or even no transitions at all. The higher
#          the width of the terminal, the smoother the transitions.
#
# Original idea and code can be found here: https://gist.github.com/XVilka/8346728
# I just got rid of the awk stuff and bashified some things.
#    -- Maurice J Niessen -- https://github.com/mjniessen/kitty

function rainbow {
    local width=${1:-80}
    local colnum
    local r; local g; local b
    for (( colnum=0; colnum<=width; colnum++ ))
    do
        (( r=255-(colnum*255/width) ))
        (( g=(colnum*510/width) ))
        (( b=(colnum*255/width) ))
        (( g > 255 )) && (( g=510-g ))
        printf "\033[48;2;%d;%d;%dm" $r $g $b
        printf "\033[38;2;%d;%d;%dm" $(( 255-r )) $(( 255-g )) $(( 255-b ))
        printf " \033[0m"
    done
}

((cols=$(tput cols)-1))
typeset -a colrs

# Reset output, if something goes wrong
trap 'tput sgr0; echo' EXIT

rainbow "$cols"

