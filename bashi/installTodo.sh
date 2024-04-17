#!/bin/bash
echo -e "\e[0;38;5;160m[Eligió la instalación desatendida de paquetes                  ] \e[0m"
echo -e "\e[0;38;5;208m[Actualisador e intalador de completentos para Ubuntu LTS.      ]\e[0m"
echo -e "\e[0;38;5;208m[Instalacion de paquetes Todos los paquetes nesesarios.        ]\e[0m"
	             echo "-----------------------------------------------------------------" ; sleep 2s
	echo " "
#1 Seccion de Instalacion de repositorios:
		sudo add-apt-repository universe -y
		sudo add-apt-repository ppa:appimagelauncher-team/stable -y
		sudo flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
		sudo add-apt-repository ppa:helkaluin/webp-pixbuf-loader -y
		sudo apt update
	echo " "
	echo -e "\e[0;38;5;208m✅ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m" ; sleep 1s
	echo " "
#2 Seccion de Instalacion de paquetes para la terminal CLI:
    	sudo nala install neofetch htop bpytop lm-sensors deborphan -y
    echo -e "\e[0;38;5;208m█ neofetch, htop, bpytop, lm-sensors, deborphan, installed \e[0m" ; sleep 1s
    	sudo nala install fish cmatrix -y
    echo -e "\e[0;38;5;208m█ fish, cmatrix installed \e[0m" ; sleep 1s
    	sudo nala install ssh net-tools samba nmap -y
    echo -e "\e[0;38;5;208m█ ssh, net-tools, samba, nmap, installed \e[0m" ; sleep 1s
		sudo nala install mc links2 -y
	echo -e "\e[0;38;5;208m█ midnight commander, links2 (navegador web cli), installed \e[0m" ; sleep 1s
	#deprecated
    	#sudo nala install cmake alien -y
	echo -e "\e[0;38;5;208m✅ Se instalaron paquetes CLI y aplicaciones para la terminal.\e[0m" ; sleep 1s
	echo " "
#3 Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
    	sudo nala install webp-pixbuf-loader -y
    echo -e "\e[0;38;5;208m█ webp-pixbuf-loader installed \e[0m" ; sleep 1s
    	sudo nala install gnome-tweaks -y
    echo -e "\e[0;38;5;208m█ gnome-tweaks installed \e[0m" ; sleep 1s
    	#sudo nala install gnome-shell-extensions -y
    #echo -e "\e[0;38;5;208m█ gnome-shell-extensions installed \e[0m" ; sleep 1s
    	sudo nala install ubuntu-restricted-extras -y
    echo -e "\e[0;38;5;208m█ ubuntu-restricted-extras installed \e[0m" ; sleep 1s
    	sudo nala install gnome-software -y
    echo -e "\e[0;38;5;208m█ gnome-software installed \e[0m" ; sleep 1s
    	sudo nala install gnome-software-plugin-flatpak -y
    echo -e "\e[0;38;5;208m█ gnome-software-plugin-flatpak installed \e[0m" ; sleep 1s
    	sudo nala install libfuse2 -y
    echo -e "\e[0;38;5;208m█ libfuse2 installed \e[0m" ; sleep 1s
    	sudo nala install appimagelauncher -y
    echo -e "\e[0;38;5;208m█ appimagelauncher installed \e[0m" ; sleep 1s
    	sudo nala install flatpak -y
    echo -e "\e[0;38;5;208m█ flatpak installed \e[0m" ; sleep 1s
		sudo nala install stacer -y
	echo -e "\e[0;38;5;208m█ stacer installed \e[0m" ; sleep 1s
		sudo nala install synaptic -y
	echo -e "\e[0;38;5;208m█ synaptic package manager installed \e[0m" ; sleep 1s
		sudo nala install tilix -y
	echo -e "\e[0;38;5;208m█ tilix package manager installed \e[0m" ; sleep 1s
	#Seccion instalacion de spaps
		sudo snap install indicator-sensors
	echo -e "\e[0;38;5;208m█ indicator-sensors (snap) installed \e[0m" ; sleep 1s
	#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
    	#sudo nala install plank -y
	echo -e "\e[0;38;5;208m✅ Se ha instaladoo la tienda de aplicaciones, y componetes de sistema\e[0m"
	echo " "
#4 Seccion de Instalacion de apps de interfacegrafica:
   		sudo nala install cups-pdf -y
    echo -e "\e[0;38;5;208m█ cups-pdf installed \e[0m" ; sleep 1s
    	sudo nala install font-manager -y
    echo -e "\e[0;38;5;208m█ font-manager installed \e[0m" ; sleep 1s
	echo " "
	#deprecated:
   		#sudo nala install python3-pip libqt5gui5 libqt5widgets5 qt5-gtk-platformtheme libqt5x11extras5 libqt5svg5 libqt5dbus5 sqlite3 -y
    	#sudo pip3 install bauh -y
echo " "
#4.1 Seccion de instalaciones de Plantillas y complementos personalisados.
    echo " Instalando las plantillas en ~/Plantillas"
    touch $HOME/Plantillas/'Documento txt.txt'
        echo ". " >> $HOME/Plantillas/'Documento txt.txt'

    touch $HOME/Plantillas/'Documento md.md'
        echo "# Titulo" >> $HOME/Plantillas/'Documento md.md'
        echo "### Sub titulo" >> $HOME/Plantillas/'Documento md.md'
        echo "> Comentario" >> $HOME/Plantillas/'Documento md.md'
        echo "* Vineta" >> $HOME/Plantillas/'Documento md.md'

    tar -Jxvf plantillas.tar.xz -C $HOME/Plantillas

    	cp -r fish/ $HOME/.config/
		echo "date" >> $HOME/.bashrc ; echo "fish" >> $HOME/.bashrc
		
    echo " Instalando de bienvenida para fish en ~/.config/fish/" ; sleep 1s
echo " "
echo -e "\e[0;38;5;208m✅ Se instalaron las plantillas\e[0m" ; sleep 1s
echo " "
#5 Seccion de instalacion de la impresora m2020
sudo bash -c 'echo "deb http://www.bchemnet.com/suldr/ debian extra" >> /etc/apt/sources.list'
    wget http://www.bchemnet.com/suldr/pool/debian/extra/su/suldr-keyring_2_all.deb
        sudo dpkg -i suldr-keyring_2_all.deb
		#./packs/ Samsung Unified Linux Driver Repository Keyring

    sudo nala update
    apt search suld-driver
        sudo nala install suld-driver2-1.00.39 -y
		#Samsung Unified Linux Driver2
echo -e "\e[0;38;5;208m✅ Tareas terminadas de instalacion de la impresora m2020.\e[0m" ; sleep 1s
echo " "
#6 Seccion de instalacion de temas para Gnome 42.9, TemaWhiteSur
mkdir $HOME/.icons && sleep 1s
	tar -Jxvf ./packs/YaruEX-Natural2024.tar.xz -C $HOME/.icons && sleep 1s
		 
	mkdir $HOME/.themes && sleep 1s
	cp -r ./packs/temas/* $HOME/.themes
		 
	#sudo cp ./bashi/activities.svg /usr/share/themes/WhiteSur-Dark-purple/gnome-shell/assets && sudo cp ./bashi/view-app-grid.svg /usr/share/themes/WhiteSur-Dark-purple/gnome-shell/assets
	
	sudo chmod o+w /usr/share/themes -R
		 
		 echo -e "\e[0;38;5;208m✅ Se Instalaron Temas e iconos, entre en Retoques para aplicarlos. \e[0m" ; sleep 1
	
#7 Seccion de instalacion de temas para la terminal
echo -e "\e[0;38;5;208m Se instalaran los perfiles de colores para tilix\e[0m"
	cp -r ./TemasTerm/tilix ~/.config/
	cp ./TemasTerm/biraXim.zsh-theme ~/.oh-my-zsh/themes/
	cp -r ./TemasTerm/neofetch $HOME/.config/
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
echo -ne 'Terminando: - \r' ; sleep 0.3
echo -ne 'Terminando: \ \r' ; sleep 0.3
echo -ne 'Terminando: | \r' ; sleep 0.3
echo -ne 'Terminando: / \r' ; sleep 0.3
echo -ne 'Terminando: OK \r' ; sleep 2s
echo -ne '\n'
echo " "
bash bashi/installFlatpak-All.sh

# sáb 17 dic 2022 19:14:01 CST
# mar 03 ene 2023 19:53:42 CST
# mar 16 abr 2024 19:04:43 CST

