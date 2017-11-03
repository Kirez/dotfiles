#!/usr/bin/env bash

source "${HOME}/.cache/wal/colors.sh"

reload_dunst() {
    pkill dunst
    dunst \
        -lb "${color0:-#F0F0F0}" \
        -nb "${color0:-#F0F0F0}" \
        -cb "${color0:-#F0F0F0}" \
        -lf "${color15:=#000000}" \
        -bf "${color15:=#000000}" \
        -cf "${color15:=#000000}" \
        -nf "${color15:=#000000}" &
}

main() {
    reload_dunst &
}

main
