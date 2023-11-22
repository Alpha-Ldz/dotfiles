rm -rf ~/.config/hypr && mv ./config/hypr ~/.config/
mv ./config/* ~/.config/
git reset --hard
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
