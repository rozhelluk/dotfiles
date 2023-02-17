#!/usr/bin/env bash


opacity=$(awk '$1 == "opacity:" {print $2; exit}' \
    ~/.config/alacritty/alacritty.yml)

if [ "$1" != '' ] && [[ $1 =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]; then
    echo "$1"
    sed -i -- "s/opacity: $opacity/opacity: $1/" \
        ~/.config/alacritty/alacritty.yml
    exit 1
else
    case $opacity in
        1.0)
            new_opacity=0.1
            ;;
        *)
            new_opacity=1.0
            ;;
    esac
    sed -i -- "s/opacity: $opacity/opacity: $new_opacity/" \
        ~/.config/alacritty/alacritty.yml
fi
