#!/bin/bash

FILE=~/Downloads/go1.*.linux-amd64.tar.gz

# Loop até que o arquivo seja encontrado
while [ ! -f $FILE ]; do
  read -p "O arquivo do Flutter já foi baixado? (s/n): " resposta
  if [ "$resposta" != "s" ]; then
    echo "Por favor, baixe o arquivo do Flutter e coloque-o na pasta de Downloads."
  fi
done

# Verifica se a pasta ja existe
if [ -d "/usr/local/go" ]; then
    echo "A pasta go já existe. Removendo..."
    sudo rm -rf "/usr/local/go"  # Remove a pasta go
    echo "A pasta go foi removida."
else
    echo "A pasta go não existe."
fi


echo "Extraindo o arquivo..."
sudo tar -C /usr/local -xzf $FILE

echo "Adicionando o go ao PATH..."
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc

# Cria a pasta de projetos em go
mkdir -p ~/go/src/github.com/manoelmarquesfor

echo "Go instalado com sucesso!"
