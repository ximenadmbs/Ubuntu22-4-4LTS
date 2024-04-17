#!/bin/bash
echo -e "\e[0;38;5;208m[   Actualisador e intalador de completentos para Ubuntu LTS.   ]\e[0m"
echo -e "\e[0;38;5;208m[Instalacion de temas de colores de Tilix.                      ]\e[0m"
	             echo "-----------------------------------------------------------------" ; sleep 2s
	echo " "
echo -e "\e[0;38;5;209mSe instalaran los perfiles de colores para tilix\e[0m"
	cp -r ./TemasTerm/tilix ~/.config/
	cp ./TemasTerm/biraXim.zsh-theme ~/.oh-my-zsh/themes/
	cp -r ./TemasTerm/neofetch $HOME/.config/
echo " "
echo "✅ Se instalo en: ~/.config/tilix/schemes/ "
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
echo "✅ Se intalo el tema del pront zsh en ~/.oh-my-zsh/themes/"
echo -e "Nombre del tema:\e[0;38;5;209m biraXim \e[0m"
echo " "
echo "✅ Se instalo logo Neofetch en: ~/.config/neofetch/ "
echo " "
echo -ne 'Terminando: - \r' ; sleep 0.3
echo -ne 'Terminando: \ \r' ; sleep 0.3
echo -ne 'Terminando: | \r' ; sleep 0.3
echo -ne 'Terminando: / \r' ; sleep 0.3
echo -ne 'Terminando: OK \r' ; sleep 1s
echo -ne '\n'
echo " "
echo "	Presiona cualquier tecla para continuar."
echo "	q.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
q) date ; sleep 3s ; exit;;
*) clear ; bash bashi/installMenu.sh
exit 1;;
esac
exit 0

# chmod 777 tilix-colores-Install.sh
# Ejecutar con ./tilix-colores-Install.sh

# mar 13 dic 2022 15:36:48 CST
# lun 26 dic 2022 20:25:38 CST
# mar 16 abr 2024 19:04:43 CST

