rm -rf ~/.config/hypr && mv ./config/hypr ~/.config/
mv ./config/* ~/.config/
git reset --hard

ssh-keygen -t rsa -b 4096

sudo pacman -Syu rofi neovim kitty zsh npm unzip fd ripgrep tree python-pip jq virt-manager virt-viewer qemu vde2 ebtables iptables-nft nftables dnsmasq bridge-utils ovmf swtpm linux-firmware-qlogic

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
