rm -rf $ConfigDir/hypr && mv ./config/hypr $ConfigDir
mv ./config/* $ConfigDir
mv zshrc ../.zshrc
git reset --hard

exec scripts/setupGit.sh

sudo pacman -Syu rofi neovim kitty zsh npm unzip fd ripgrep tree python-pip jq virt-manager virt-viewer qemu vde2 ebtables iptables-nft nftables dnsmasq bridge-utils ovmf swtpm linux-firmware-qlogic

git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
cd .. && rm -rf yay

yay -S --needed --noconfirm swww thorium-browser-bin ttf-firacode-nerd wd719x-firmware upd72020x-fw aic94xx-firmware 

mkdir ~/.oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.oh-my-posh

exec scripts/installThemes.sh
