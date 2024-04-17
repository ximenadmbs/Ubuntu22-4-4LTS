#!/bin/bash
echo -e "\e[0;38;5;208m[   Actualisador e intalador de completentos para Ubuntu LTS.   ]\e[0m"
echo -e "\e[0;38;5;208m[Instalacion de paquetes CLI y aplicaciones para la terminal.   ]\e[0m"
	             echo "-----------------------------------------------------------------" ; sleep 2s
	echo " "
#Seccion de Instalacion de paquetes para la terminal:
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

# sáb 17 dic 2022 19:14:01 CST
# mar 03 ene 2023 19:53:42 CST
# mar 16 abr 2024 19:04:43 CST

