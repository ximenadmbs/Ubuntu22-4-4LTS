#!/bin/bash
#Fuentes:
          #https://github.com/vinceliuice/WhiteSur-gtk-theme
          #https://www.gnome-look.org/p/1400021
          #https://osxdaily.com/2021/06/11/grab-the-macos-monterey-default-wallpaper/
		  
#Conseguir el repositorio:
          #sudo nala install git
          #sudo git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
		  
 cd WhiteSur-gtk-theme
         sudo ./install.sh -t all -N glassy -s 220 && sleep 1s
         sudo ./tweaks.sh -g && sleep 2s
		 cd ..
		 
		 mkdir $HOME/.icons && sleep 1s
		 tar -Jxvf YaruEX-Natural2024.tar.xz -C $HOME/.icons && sleep 1s
		 
		 mkdir $HOME/.themes && sleep 1s
		 cp -r temas/* $HOME/.themes
		 
cd iconThemWhiteSur
		 sudo ./install-icons.sh && cd .. ; cd ..
		 
		 echo -e "\e[0;38;5;208m██ Se Instalaron Temas e iconos, entre en Retoques para aplicarlos. \e[0m" ; sleep 1
echo " "
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
