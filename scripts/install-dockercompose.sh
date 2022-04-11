#!/bin/bash
set -Eeuo pipefail
trap "echo -e \"\033[1;31m[!] \e[0m Script error occured.\"" ERR

GREEN="\033[1;32m"
ENDCOLOR="\e[0m"


# install docker-compose
echo -ne $GREEN"[+] "$ENDCOLOR; echo "Installing docker-compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo -ne $GREEN"[+] "$ENDCOLOR; echo "Chmod docker-compose"
sudo chmod +x /usr/local/bin/docker-compose

