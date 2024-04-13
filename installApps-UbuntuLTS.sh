#!/bin/bash
echo " "
echo "Ximena bash scrip [Versión 2.4.24]"
echo "(c) Corporation. Todos los derechos reservados." 
echo -e "\e[0;38;5;208m[Actualizador e intalador de complementos para Ubuntu 22.4.4 LTS\e[0m" 
echo -e "\e[0;38;5;208m[Se iniciará las actualizaciones y la interface de nala.]\e[0m" 
#espera 1 segundo
        sleep 2s
echo " "
#Seccion de instalacion de actualisaciones:
 	sudo apt update
    sudo apt upgrade -y
	sudo apt autoclean
echo " "
#espera 2 segundo
echo -e "\e[0;38;5;208m██ Se actualiso los paquetes del sistema\e[0m" && sleep 2s
    	sudo apt install nala -y
    echo -e "\e[0;38;5;208m█ nala installed and run\e[0m" && sleep 3s
clear && bash bashi/installMenu.sh
clear
echo -ne 'Terminando: - \r' && sleep 0.3
echo -ne 'Terminando: \ \r' && sleep 0.3
echo -ne 'Terminando: | \r' && sleep 0.3
echo -ne 'Terminando: / \r' && sleep 0.3
echo -ne 'Terminando: OK \r' && sleep 1s
echo -ne '\n'
echo " "
    neofetch
echo -e "\e[0;38;5;208m🦄 Ximena bash scrip [Versión 2.4.24] \e[0m"
echo -e "\e[0;38;5;208m:::::Se acompleto la tarea de instalacion::::: \e[0m"
echo -e "\e[0;38;5;208m[Reinicia el sistema antes de usar los paquetes instalados de Flatpak.] \e[0m"
    date
echo " "

#chmod 777 installApps-UbuntuLTS.sh
#Ejecutar con ./installApps-UbuntuLTS.sh

# mié 09 sep 2022 12:52:45 CDT
# mar 03 ene 2023 19:53:42 CST
# mar 02 abr 2024 15:13:55 CST