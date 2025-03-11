#!/bin/bash

# Caminho para o arquivo de aplicativos
APP_LIST="apps.txt"

# Instalação dos aplicativos
while IFS= read -r line; do
    # Ignora linhas vazias e comentários
    if [[ ! -z "$line" && ! "$line" =~ ^# ]]; then
        trimmed_line=$(echo "$line" | sed 's/^[ \t]*//;s/[ \t]*$//')
        
        echo "Instalando: $trimmed_line"
        sudo apt install -y "$trimmed_line"
    fi
done < "$APP_LIST"