#!/bin/bash
echo -e "\e[0;38;5;208m[   Actualisador e intalador de completentos para Ubuntu LTS.   ]\e[0m"
echo -e "\e[0;38;5;208m[De la siguiente lista elige el paquete a instalar.             ]\e[0m"
	             echo "-----------------------------------------------------------------" ; sleep 2s
	echo " "
#Seccion de Instalacion de repositorios:

echo " SELECCIONA UNA OPCIÓN:" 
echo "	 1.-Instalar jdownloader2 (snap)                 14.-Instalar peazip (flatpak)" 
echo "	 2.-Instalar spotify (snap)                      15.-Instalar Obsidian (snap)" 
echo "	 3.-Instalar notepadqq (.deb)                    16.-Instalar virtualbox (.deb)" 
echo "	 4.-Instalar calibre (flatpak)                   17.-Instalar implescreenrecorder (.deb)" 
echo "	 5.-Instalar Discord (flatpak)                   18.-Instalar librecad (.deb)"
echo "	 6.-Instalar google.Chrome (flatpak)             19.-Instalar wine (.deb)"
echo "	 7.-Instalar arianna (flatpak)                   20.-Instalar wineHq (.deb)" 
echo "	 8.-Instalar videolan.VLC (snap)                 21.-Instalar PDF Arranger (snap)"
echo "	 9.-Instalar system-monitoring-center (flatpak)  22.-Instalar Menu pincipal Alacarte (.deb)"
echo "	10.-Instalar inkscape (.deb)                     "
echo "	11.-Instalar k3b (.deb)		                     "
echo "	12.-Instalar krita (snap)                        "
echo "	13.-Instalar caja dropbox (.deb)                 "
	echo " "
echo "	Presiona cualquier tecla para continuar al menu."
echo "	q.-Salir" 
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
	1) sudo snap install jdownloader2 ; echo -e "\e[0;38;5;208m█ jdownloader2 (snap) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	2) sudo snap install spotify ; echo -e "\e[0;38;5;208m█ spotify (snap) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;;
	3) sudo nala install notepadqq ; echo -e "\e[0;38;5;208m█ notepadqq (.deb) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;;
	4) sudo flatpak install flathub com.calibre_ebook.calibre ; echo -e "\e[0;38;5;208m█ calibre (flatpak) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	5) sudo flatpak install flathub com.discordapp.Discord ; echo -e "\e[0;38;5;208m█ Discord (flatpak) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	6) sudo flatpak install flathub com.google.Chrome ; echo -e "\e[0;38;5;208m█ google.Chrome (flatpak) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	7) sudo flatpak install flathub org.kde.arianna ; echo -e "\e[0;38;5;208m█ arianna (flatpak) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	8) sudo snap install vlc ; echo -e "\e[0;38;5;208m█ videolan.VLC (snap) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	9) sudo flatpak install flathub io.github.hakandundar34coding.system-monitoring-center ; echo -e "\e[0;38;5;208m█ system-monitoring-center installed (flatpak)\e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	10) sudo nala install inkscape ; echo -e "\e[0;38;5;208m█ inkscape (.deb) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	11) sudo nala install k3b  ; echo -e "\e[0;38;5;208m█ k3b (.deb) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	12) sudo snap install krita ; echo -e "\e[0;38;5;208m█ krita (snap) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	13) sudo nala install caja-dropbox ; echo -e "\e[0;38;5;208m█ dropbox (.deb) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	14) sudo flatpak install flathub io.github.peazip.PeaZip ; echo -e "\e[0;38;5;208m█ peazip (flatpak) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	15) sudo snap install obsidian --classic ; echo -e "\e[0;38;5;208m█ obsidian installed (snap)\e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;;  
	16) sudo nala install virtualbox ; echo -e "\e[0;38;5;208m█ virtualbox (.deb) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;;  
	17) sudo nala install simplescreenrecorder ; echo -e "\e[0;38;5;208m█ simplescreenrecorder (.deb) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	18) sudo nala install librecad ; echo -e "\e[0;38;5;208m█ librecad (.deb) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	19) sudo nala install wine ; wine --version ; echo -e "\e[0;38;5;208m█ wine (.deb) installed \e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	20) bash ./Wine_apps/WineHQInstall.sh;;
	21) sudo snap install pdfarranger ; echo -e "\e[0;38;5;208m█ pdfarranger installed (snap)\e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
	22) sudo nala install alacarte ; echo -e "\e[0;38;5;208m█ alacarte main menu installed (.deb)\e[0m" ; sleep 2s ; clear ; bash bashi/pakAlacarta.sh;; 
q) date ; exit;;
*) clear ; bash bashi/installMenu.sh
exit 1;;
	esac
exit 0

#chmod 777 installApps-UbuntuLTS.sh
#Ejecutar con ./installApps-UbuntuLTS.sh

# mié 09 sep 2022 12:52:45 CDT
# mar 03 ene 2023 19:53:42 CST
# jue 11 abr 2024 14:27:54 CST
# mar 16 abr 2024 19:04:43 CST

