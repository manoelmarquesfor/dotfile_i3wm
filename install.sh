#!/bin/bash

# Caminho para o arquivo de aplicativos
APP_LIST="apps.txt"

# Instalação dos aplicativos
while IFS= read -r line; do
    # Ignora linhas vazias e comentários
    if [[ ! -z "$line" && ! "$line" =~ ^# ]]; then
        echo "Instalando: $line"
        sudo apt install -y "$line" 
    fi
done < "$APP_LIST"