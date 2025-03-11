#!/bin/bash

# Caminho do arquivo do Flutter
FILE=~/Downloads/flutter_linux_*.tar.xz


# Loop até que o arquivo seja encontrado
while [ ! -f $FILE ]; do
  read -p "O arquivo do Flutter já foi baixado? (s/n): " resposta
  if [ "$resposta" != "s" ]; then
    echo "Por favor, baixe o arquivo do Flutter e coloque-o na pasta de Downloads."
  fi
done

# Cria a pasta de desenvolvimento
if [ ! -d ~/development ]; then
  mkdir -p ~/development
fi


echo "Extraindo o arquivo do Flutter..."

# Extrai o arquivo
tar -xf $FILE -C ~/development/

# Cria a pasta de projetos em flutter
mkdir -p ~/flutter-dart/src/github.com/manoelmarquesfor
