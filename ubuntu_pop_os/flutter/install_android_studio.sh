#!/bin/bash

# Caminho do arquivo do Android Studio
FILE=~/Downloads/android-studio-*.tar.gz

# Loop até que o arquivo seja encontrado
while [ ! -f $FILE ]; do
  read -p "O arquivo do Android Studio já foi baixado? (s/n): " resposta
  if [ "$resposta" != "s" ]; then
    echo "Por favor, baixe o arquivo do Android Studio e coloque-o na pasta de Downloads."
  fi
done

# Cria a pasta de desenvolvimento
if [ ! -d ~/development ]; then
  mkdir -p ~/development
fi

echo "Extraindo o arquivo do Android Studio..."
# Extrai o arquivo
tar -xf $FILE -C ~/development/

# Altera as permissões
chmod +x ~/development/android-studio/bin/studio.sh

# Executa o Android Studio
~/development/android-studio/bin/studio.sh