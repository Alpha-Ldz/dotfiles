#/bin/ssh

sudo pacman -Syyu

mkdir ~/Documents
mkdir ~/Documents/Git

(cd ~/Documents/Git/ && git clone https://aur.archlinux.org/yay.git)

(cd ~/Documents/Git/yay && makepkg -si )

yay -S --needed --noconfirm - < ~/.config/initSession/packages.txt

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo systemctl enable ly.service

sudo reboot
