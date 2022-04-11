#!/bin/bash
set -Eeuo pipefail
trap "echo -e \"\033[1;31m[!] \e[0m Script error occured.\"" ERR

GREEN="\033[1;32m"
ENDCOLOR="\e[0m"


# install docker-compose
echo -ne $GREEN"[+] "$ENDCOLOR; echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -ne $GREEN"[+] "$ENDCOLOR; echo "Installing powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
