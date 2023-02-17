#!/usr/bin/env bash


decorations=$(awk '$1 == "decorations:" {print $2; exit}' \
    ~/.config/alacritty/alacritty.yml)

case $decorations in
    Full)
        toggle_decorations=None
        ;;
    *)
        toggle_decorations=Full
        ;;
esac

sed -i -- "s/decorations: $decorations/decorations: $toggle_decorations/" \
    ~/.config/alacritty/alacritty.yml
