#!/bin/bash

# Define o caminho para a pasta .config
CONFIG_DIR="$HOME/.config"

# Verifica se a pasta .config existe
if [ -d "$CONFIG_DIR" ]; then
    echo "A pasta .config já existe."
else
    echo "A pasta .config não existe. Criando..."
    mkdir -p "$CONFIG_DIR"  # Cria a pasta .config
    echo "A pasta .config foi criada."
fi


#Verifica se a pasta i3 já existe
if [ -d "$CONFIG_DIR/i3" ]; then
    echo "A pasta i3 já existe."
    rm -rf "$CONFIG_DIR/i3"
    echo "A pasta i3 foi removida."
else
    echo "A pasta i3 não existe. Criando..."
    mkdir -p "$CONFIG_DIR/i3"  # Cria a pasta i3
    echo "A pasta i3 foi criada."
fi

#Verifica se a pasta xfce4 já existe
if [ -d "$CONFIG_DIR/xfce4" ]; then
    echo "A pasta xfce já existe."
    rm -rf "$CONFIG_DIR/xfce4"
    echo "A pasta xfce foi removida."
else
    echo "A pasta xfce não existe. Criando..."
    mkdir -p "$CONFIG_DIR/xfce4"  # Cria a pasta xfce
    echo "A pasta xfce foi criada."
fi


# Cria link simbólico para o arquivo de configuração
echo "Criando link simbólico para o arquivo de configuração..."

ln -s "$PWD/config/i3" "$CONFIG_DIR/i3"
ln -s "$PWD/config/xfce4" "$CONFIG_DIR/xfce4"