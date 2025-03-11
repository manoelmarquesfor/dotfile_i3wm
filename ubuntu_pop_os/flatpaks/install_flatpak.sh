#!/bin/bash


# Caminho para o arquivo de aplicativos
APP_LIST="./flatpaks/apps_flatpak.txt"

# Instalação dos aplicativos
while IFS= read -r line; do
    # Ignora linhas vazias e comentários
    if [[ ! -z "$line" && ! "$line" =~ ^# ]]; then
        trimmed_line=$(echo "$line" | sed 's/^[ \t]*//;s/[ \t]*$//')
        
        echo "Instalando: $trimmed_line"
        flatpak install flathub "$trimmed_line" -y
    fi
done < "$APP_LIST"