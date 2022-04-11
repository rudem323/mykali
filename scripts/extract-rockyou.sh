#!/bin/bash
set -Eeuo pipefail
trap "echo -e \"\033[1;31m[!] \e[0m Script error occured.\"" ERR

GREEN="\033[1;32m"
ENDCOLOR="\e[0m"

# Check rockyou.txt.gz exists
if [ -f "/usr/share/wordlists/rockyou.txt.gz" ]
then
    # Check that it hasn't already been unzipped
    if [ ! -f "/usr/share/wordlists/rockyou.txt" ]
    then
        echo -ne $GREEN"[+] "$ENDCOLOR; echo "Extracting rockyou.txt"
        sudo gzip -d /usr/share/wordlists/rockyou.txt.gz
    fi
    # Check that we have a UTF-8 version for kerberoast, etc
    if [ ! -f "/usr/share/wordlists/rockyou_utf8.txt" ]
    then
        echo -ne $GREEN"[+] "$ENDCOLOR; echo "Creating UTF-8 version of rockyou.txt"
        sudo iconv -f ISO-8859-1 -t UTF-8 /usr/share/wordlists/rockyou.txt > /usr/share/wordlists/rockyou_utf8.txt
    fi
fi

