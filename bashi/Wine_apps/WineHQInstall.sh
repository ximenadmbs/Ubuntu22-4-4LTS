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

#Descarga y copia de winetricks.
#cd "${HOME}/Descargas"
#wget  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo cp winetricks /usr/bin/

#instalacion de winetricks
sudo nala install winetricks

#herramienta de línea de comandos que se utiliza para extraer archivos de los archivos CAB (Cabinet) de Microsoft.
sudo nala install cabextract

#winetricks corefonts tahoma dotnet452 gdiplus msftedit riched20 riched30 richtx32 vcrun2005 vcrun2013 vcrun2019 vcrun6 vcrun6sp6

#Abrir la configuracion de wine,
winecfg

clear ; cd .. ; bash pakAlacarta.sh

#Agrega 2 librerias ctl3d32, mfc140u. Agregar y aplicar, Aplicaciones Windows7.

#Ejecuta el programa EXE
