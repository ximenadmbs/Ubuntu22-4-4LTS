#!/bin/bash

sudo dpkg --add-architecture i386

#Download and add the repository key:
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

#Select your Ubuntu version and download the WineHQ sources file: Ubuntu 22.04 (Jammy Jellyfish)
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources

#Update the package information:
sudo nala update

#Install Wine, Install one of the following packages: stable
sudo nala install --install-recommends winehq-stable
echo -e "\e[0;38;5;208m█ winehq-stable installed \e[0m" ; sleep 1s

#Descarga y copia de winetricks.
#cd "${HOME}/Descargas"
#wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x ./Wine_apps/winetricks
sudo cp ./Wine_apps/winetricks /usr/bin/

#instalacion de winetricks
sudo nala install winetricks
echo -e "\e[0;38;5;208m█ winetricks installed \e[0m" ; sleep 1s

#herramienta de línea de comandos que se utiliza para extraer archivos de los archivos CAB (Cabinet) de Microsoft.
sudo nala install cabextract  ; sleep 2s
echo -e "\e[0;38;5;208m█ cabextract installed \e[0m" ; sleep 2s

#winetricks corefonts tahoma dotnet452 gdiplus msftedit riched20 riched30 richtx32 vcrun2005 vcrun2013 vcrun2019 vcrun6 vcrun6sp6

#Abrir la configuracion de wine,
#WineOption-InstallExe.sh

clear ; bash ./bashi/pakAlacarta.sh

#Agrega 2 librerias ctl3d32, mfc140u. Agregar y aplicar, Aplicaciones Windows7.

#Ejecuta el programa EXE
echo -e "\e[0;38;5;208m✅ Se instalaron paquetes  winehq-stable, winetricks y cabextract .\e[0m" ; sleep 1s
echo " "
echo -ne 'Terminando: - \r' ; sleep 0.3
echo -ne 'Terminando: \ \r' ; sleep 0.3
echo -ne 'Terminando: | \r' ; sleep 0.3
echo -ne 'Terminando: / \r' ; sleep 0.3
echo -ne 'Terminando: OK \r' ; sleep 2s
echo -ne '\n'
echo " "
echo "	Presiona cualquier tecla para continuar."
echo "	q.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
q) date ; sleep 3s ; exit;;
*) clear && bash bashi/installMenu.sh
exit 1;;
esac
exit 0

# mar 16 abr 2024 19:04:43 CST

