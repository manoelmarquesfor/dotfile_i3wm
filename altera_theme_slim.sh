#!/bin/bash

THEME="minimal"
PATH_THEMES_SLIM="/usr/share/slim/themes"
PATH_THEME="$pwd/themes/slim/$THEME"

PATH_CONFIG_SLIM="/etc/slim.conf"

echo "Tema copiado para $PATH_THEMES"
cp "$PATH_THEME" "$PATH_THEMES_SLIM"
echo "Tema copiado com sucesso."



echo "Configurando o tema no arquivo de configuração do SLiM..."
NOVO_THEME="current_theme     $THEME"

# Usando sed para substituir toda a linha que contém 'current_theme'
sed -i "/current_theme/c\\$NOVO_TEXTO" "$PATH_CONFIG_SLIM"

echo "Theme alterado com sucesso."