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


#Verifica se a pasta do cosmic já existe
if [ -d "$CONFIG_DIR/cosmic" ]; then
    echo "A pasta cosmic já existe."
    rm -rf "$CONFIG_DIR/cosmic"
    echo "A pasta cosmic foi removida."
else
    echo "A pasta cosmic não existe. Criando..."
    mkdir -p "$CONFIG_DIR/cosmic"  # Cria a pasta cosmic
    echo "A pasta cosmic foi criada."
fi


# Cria link simbólico para o arquivo de configuração
echo "Criando link simbólico para o arquivo de configuração..."

ln -s "$PWD/config/cosmic" "$CONFIG_DIR/cosmic"
