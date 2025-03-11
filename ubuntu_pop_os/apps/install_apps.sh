#!/bin/bash

sudo apt list --upgradable
sudo apt update

sudo apt upgrade -y


# Caminho para o arquivo de aplicativos
APP_LIST="./apps/apps.txt"

sudo ./apps/chave_chrome.sh
sudo ./apps/chave_anydesk.sh

sudo apt update

# Instalação dos aplicativos
while IFS= read -r line; do
    # Ignora linhas vazias e comentários
    if [[ ! -z "$line" && ! "$line" =~ ^# ]]; then
        trimmed_line=$(echo "$line" | sed 's/^[ \t]*//;s/[ \t]*$//')
        
        echo "Instalando: $trimmed_line"
        sudo apt install -y "$trimmed_line"
        else 
            echo "Ignorando: $line"
    fi
done < "$APP_LIST"