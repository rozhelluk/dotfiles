#!/usr/bin/env bash


opacity=$(awk '$1 == "transparent_background_colors:" {print $2; exit}' \
    ~/.config/alacritty/alacritty.yml)

case $opacity in
    true)
        toggle_opacity=false
        ;;
    *)
        toggle_opacity=true
        ;;
esac

sed -i -- "s/transparent_background_colors: $opacity/transparent_background_colors: $toggle_opacity/" \
    ~/.config/alacritty/alacritty.yml
