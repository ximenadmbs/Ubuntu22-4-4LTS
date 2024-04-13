#!/bin/bash
echo " "
echo -e "\e[0;38;5;208m[Actualisador e intalador de completentos para Ubuntu LTS.\e[0m"
echo -e "\e[0;38;5;208m[Se iniciara la instalacion de Paquetería Flatpak.]\e[0m"
	echo "-----------------------------------------------------------------------" ; sleep 3s
	echo " "
#Instalación de Paquetería Flatpak (si lanzan error de instalación reiniciar el instalador)
	echo -e "\e[0;38;5;208m█ Instalación de Paquetería Flatpak.\e[0m" ; sleep 2s
    sudo flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
		echo -e "\e[0;38;5;208m█ flatpakrepo repositorio installed \e[0m" ; sleep 1s
			sudo nala install flatpak -y
		echo -e "\e[0;38;5;208m█ flatpak installed \e[0m" ; sleep 1s
			sudo nala install gnome-software-plugin-flatpak -y
    	echo -e "\e[0;38;5;208m█ gnome-software-plugin-flatpak installed \e[0m" ; sleep 1s
			
			sudo flatpak install flathub com.mattjakeman.ExtensionManager -y
        echo -e "\e[0;38;5;208m█ flatpak ExtensionManager installed \e[0m" ; sleep 1s
        	sudo flatpak install flathub nl.hjdskes.gcolor3 -y
        echo -e "\e[0;38;5;208m█ flatpak gcolor3 installed \e[0m" ; sleep 1s

echo " "
echo -e "\e[0;38;5;208m██ Se Instalaron la Paquetería de Flatpak, Restart para completar la configuración, reinicie su sistema. \e[0m" ; sleep 1s
echo -e "\e[0;38;5;208m██ Si lanzan ERROR de instalación, reinicia el pc y vuenve a ejutar el instalador. \e[0m" ; sleep 1s
echo " "
echo -ne 'Terminando: - \r' ; sleep 0.3
echo -ne 'Terminando: \ \r' ; sleep 0.3
echo -ne 'Terminando: | \r' ; sleep 0.3
echo -ne 'Terminando: / \r' ; sleep 0.3
echo -ne 'Terminando: - \r' ; sleep 0.3
echo -ne 'Terminando: \ \r' ; sleep 0.3
echo -ne 'Terminando: | \r' ; sleep 0.3
echo -ne 'Terminando: / \r' ; sleep 0.3
echo -ne 'Terminando: OK \r' ; sleep 1s
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