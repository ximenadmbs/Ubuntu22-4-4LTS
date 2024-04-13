#!/bin/bash
echo " "
echo -e "\e[0;38;5;208m[Actualisador e intalador de completentos para Ubuntu LTS.\e[0m"
echo -e "\e[0;38;5;208m[Se iniciara la instalacion de paquetes librerias herramientas de personalisacion.]\e[0m"
	echo "-----------------------------------------------------------------------" ; sleep 3s
	echo " "
#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
    sudo nala install webp-pixbuf-loader -y
    echo -e "\e[0;38;5;208m█ webp-pixbuf-loader installed \e[0m" ; sleep 1s
    sudo nala install gnome-tweaks -y
    echo -e "\e[0;38;5;208m█ gnome-tweaks installed \e[0m" ; sleep 1s
    #sudo nala install gnome-shell-extensions -y
    echo -e "\e[0;38;5;208m█ gnome-shell-extensions installed \e[0m" ; sleep 1s
    sudo nala install ubuntu-restricted-extras -y
    echo -e "\e[0;38;5;208m█ ubuntu-restricted-extras installed \e[0m" ; sleep 1s
    sudo nala install gnome-software -y
    echo -e "\e[0;38;5;208m█ gnome-software installed \e[0m" ; sleep 1s
    #sudo nala install gnome-software-plugin-flatpak -y
    echo -e "\e[0;38;5;208m█ gnome-software-plugin-flatpak installed \e[0m" ; sleep 1s
    sudo nala install libfuse2 -y
    echo -e "\e[0;38;5;208m█ libfuse2 installed \e[0m" ; sleep 1s
    sudo nala install appimagelauncher -y
    echo -e "\e[0;38;5;208m█ appimagelauncher installed \e[0m" ; sleep 1s
    #sudo nala install flatpak -y
    echo -e "\e[0;38;5;208m█ flatpak installed \e[0m" ; sleep 1s
		sudo nala install stacer -y
	echo -e "\e[0;38;5;208m█ stacer installed \e[0m" ; sleep 1s
		sudo nala install synaptic -y
	echo -e "\e[0;38;5;208m█ synaptic package manager installed \e[0m" ; sleep 1s
		
		sudo snap install indicator-sensors -y
	echo -e "\e[0;38;5;208m█ indicator-sensors (snap) installed \e[0m" ; sleep 1s
		
#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
    #sudo nala install plank -y
echo " "
echo -e "\e[0;38;5;208m██ Se ha instaladoo la tienda de aplicaciones, y componetes de sistema\e[0m"
echo " "
echo -ne 'Terminando: - \r' ; sleep 0.3
echo -ne 'Terminando: \ \r' ; sleep 0.3
echo -ne 'Terminando: | \r' ; sleep 0.3
echo -ne 'Terminando: / \r' ; sleep 0.3
echo -ne 'Terminando: - \r' ; sleep 0.3
echo -ne 'Terminando: \ \r' ; sleep 0.3
echo -ne 'Terminando: | \r' ; sleep 0.3
echo -ne 'Terminando: / \r' ; sleep 0.3
echo -ne 'Terminando: OK \r' ; sleep 2s
echo -ne '\n'
echo " "
echo "	Presiona cualquier tecla para continuar."
echo "	0.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
0) date && sleep 3s && exit;;
*) clear && bash bashi/installMenu.sh
exit 1;;
esac
exit 0

#chmod 777 installApps-UbuntuLTS.sh
#Ejecutar con ./installApps-UbuntuLTS.sh

# dom 04 dic 2022 13:20:49 CST
# sáb 17 dic 2022 19:14:01 CST
# mar 03 ene 2023 19:53:42 CST