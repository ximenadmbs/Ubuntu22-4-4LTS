#!/bin/bash
#Instalación de Paquetería Flatpak (si lanzan error de instalación reiniciar el instalador)
   			#sudo nala install flatpak -y
		#echo -e "\e[0;38;5;208m█ flatpak installed \e[0m" ; sleep 1s
			#sudo nala install gnome-software-plugin-flatpak -y
    	#echo -e "\e[0;38;5;208m█ gnome-software-plugin-flatpak installed \e[0m" ; sleep 1s
    	   # sudo flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
#Instalacion se paketes flatpak
		echo -e "\e[0;38;5;208m█ flatpakrepo repositorio installed \e[0m" ; sleep 1s
			sudo flatpak install flathub com.mattjakeman.ExtensionManager -y
        echo -e "\e[0;38;5;208m█ ExtensionManager (flatpak) installed \e[0m" ; sleep 1s
        	sudo flatpak install flathub nl.hjdskes.gcolor3 -y
        echo -e "\e[0;38;5;208m█ gcolor3 (flatpak) installed \e[0m" ; sleep 1s
			sudo flatpak install flathub io.github.peazip.PeaZip ; echo -e "\e[0;38;5;208m█ peazip (flatpak) installed \e[0m" ; sleep 2s

#Alacarta esenciales
	sudo snap install spotify ; echo -e "\e[0;38;5;208m█ spotify (snap) installed \e[0m" ; sleep 2s
	sudo snap install vlc ; echo -e "\e[0;38;5;208m█ videolan.VLC (snap) installed \e[0m" ; sleep 2s
	sudo snap install krita ; echo -e "\e[0;38;5;208m█ krita (snap) installed \e[0m" ; sleep 2s
	sudo snap install pdfarranger ; echo -e "\e[0;38;5;208m█ pdfarranger installed (snap)\e[0m" ; sleep 2s
	sudo snap install obsidian --classic ; echo -e "\e[0;38;5;208m█ obsidian installed (snap)\e[0m" ; sleep 2s
	sudo nala install notepadqq -y ; echo -e "\e[0;38;5;208m█ notepadqq (.deb) installed \e[0m" ; sleep 2s
	sudo nala install inkscape -y ; echo -e "\e[0;38;5;208m█ inkscape (.deb) installed \e[0m" ; sleep 2s
echo " "
echo -e "\e[0;38;5;208m✅ Se Instalaron la Paquetería de Flatpak, Snap, Dpkg, Restart para completar la configuración. \e[0m" ; sleep 1s
echo -e "\e[0;38;5;208mSi lanzan ERROR de instalación, Presiona cualquier tecla para continuar y ejecuta de nuevo la Opcion 4. \e[0m" ; sleep 1s
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
q) date && sleep 3s && exit;;
*) clear && bash bashi/installMenu.sh
exit 1;;
esac
exit 0

#chmod 777 installApps-UbuntuLTS.sh
#Ejecutar con ./installApps-UbuntuLTS.sh

# dom 04 dic 2022 13:20:49 CST
# sáb 17 dic 2022 19:14:01 CST
# mar 03 ene 2023 19:53:42 CST
# mar 16 abr 2024 19:04:43 CST
