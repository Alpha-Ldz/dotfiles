#!/usr/bin/env sh

export ConfDir="$HOME/.config"
export xtrans="grow"

LIST_OF_THEME="Catppuccin-Latte Tokyo-Night"

ThemeSet=$1

if [[ $LIST_OF_THEME =~ (^|[[:space:]])$ThemeSet($|[[:space:]]) ]] ; then
    echo "$ThemeSet is a valid theme"
else
    echo "$ThemeSet is not a valid theme"
    exit 1
fi

# Kitty
ln -fs $ConfDir/kitty/themes/${ThemeSet}.conf $ConfDir/kitty/themes/theme.conf
killall -SIGUSR1 kitty

#Nvim
ln -fs $ConfDir/nvim/lua/core/plugin_config/themes/${ThemeSet}.lua $ConfDir/nvim/lua/core/plugin_config/themes/theme.lua 

#Wallpaper
swww img $ConfDir/wallpapers/${ThemeSet}.jpg \
    --transition-bezier .43,1.19,1,.4 \
    --transition-type "$xtrans" \
    --transition-duration 0.7 \
    --transition-fps 120 \
    --invert-y \
    --transition-pos "$( hyprctl cursorpos )"

#gtk 3
sed -i "/^gtk-theme-name=/c\gtk-theme-name=${ThemeSet}" $ConfDir/gtk-3.0/settings.ini

flatpak --user override --env=GTK_THEME="${ThemeSet}"
