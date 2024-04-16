#!/bin/bash
echo " "
echo "+--------------------------------------------------+"
echo "|      Ximena bash scrip [Versión 1.2]             |"
echo "|  (c) Corporation. Todos los derechos reservados. |"
echo "|                                                  |"
echo "|      *** Tilix instalador de colores ***         |"
echo "+--------------------------------------------------+"
echo " "
echo -e "\e[0;38;5;209mSe instalaran los perfiles de colores para tilix\e[0m"
	cp -r tilix ~/.config/
	cp biraXim.zsh-theme ~/.oh-my-zsh/themes/
	cp -r neofetch $HOME/.config/
echo " "
echo " Se instalo en: ~/.config/tilix/schemes/ "
echo " "
echo " tilix/schemes/Dracula.json "
echo " tilix/schemes/Fairy Floss Dark.json "
echo " tilix/schemes/Foxnightly.json  "
echo " tilix/schemes/Harper.json  "
echo " tilix/schemes/Horizon Dark.json  "
echo " tilix/schemes/Omni.json  "
echo " tilix/schemes/Rosé Pine Dawn.json  "
echo " tilix/schemes/Rosé Pine Moon.json  "
echo " tilix/schemes/Rosé Pine.json  "
echo " tilix/schemes/Wild Cherry.json "
echo " "
echo " Se intalo el tema del pront zsh en ~/.oh-my-zsh/themes/"
echo -e "Nombre del tema:\e[0;38;5;209m biraXim \e[0m"
echo " "
echo " Se instalo logo Neofetch en: ~/.config/neofetch/ "
echo " "
	date
echo " "

# chmod 777 tilix-colores-Install.sh
# Ejecutar con ./tilix-colores-Install.sh

# mar 13 dic 2022 15:36:48 CST
# lun 26 dic 2022 20:25:38 CST