#!/bin/bash

#Uv python
curl -LsSf https://astral.sh/uv/install.sh | sh
echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.bashrc


# Cria a pasta de projetos em Python
mkdir -p ~/python/src/github.com/manoelmarquesfor
