#!/bin/bash
echo -e "\e[0;38;5;208m[Actualisador e intalador de completentos para Ubuntu LTS.\e[0m"
echo -e "\e[0;38;5;208m[Instalacion de paquetes CLI y aplicaciones para la terminal.]\e[0m"
	echo "-----------------------------------------------------------------------" && sleep 3s
	echo " "
#Seccion de Instalacion de paquetes para la terminal:
    sudo nala install neofetch -y
    echo -e "\e[0;38;5;208m█ neofetch installed \e[0m" && sleep 1s
    sudo nala install fish -y
    echo -e "\e[0;38;5;208m█ fish installed \e[0m" && sleep 1s
    sudo nala install ssh -y
    echo -e "\e[0;38;5;208m█ ssh installed \e[0m" && sleep 1s
    sudo nala install net-tools -y
    echo -e "\e[0;38;5;208m█ net-tools installed \e[0m" && sleep 1s
    sudo nala install htop -y
    echo -e "\e[0;38;5;208m█ htop installed \e[0m" && sleep 1s
    sudo nala install bpytop -y
    echo -e "\e[0;38;5;208m█ bpytop installed \e[0m" && sleep 1s
    sudo nala install lm-sensors -y
    echo -e "\e[0;38;5;208m█ lm-sensors installed \e[0m" && sleep 1s
    sudo nala install cmatrix -y
    echo -e "\e[0;38;5;208m█ cmatrix installed \e[0m" && sleep 1s
		sudo nala install deborphan -y
	echo -e "\e[0;38;5;208m█ deborphan installed \e[0m" && sleep 1s
		sudo nala install mc -y
	echo -e "\e[0;38;5;208m█ midnight commander installed \e[0m" && sleep 1s
		sudo nala install links2 -y
	echo -e "\e[0;38;5;208m█ links2 (navegador web cli) installed \e[0m" && sleep 1s
#deprecated
    #sudo nala install cmake -y
    #sudo nala install alien -y
    #sudo nala install nmap -y
    #sudo nala install samba -y
echo -e "\e[0;38;5;208m██ Se instalaron paquetes CLI y aplicaciones para la terminal.\e[0m" && sleep 1s
echo " "
echo -ne 'Terminando: - \r' && sleep 0.3
echo -ne 'Terminando: \ \r' && sleep 0.3
echo -ne 'Terminando: | \r' && sleep 0.3
echo -ne 'Terminando: / \r' && sleep 0.3
echo -ne 'Terminando: - \r' && sleep 0.3
echo -ne 'Terminando: \ \r' && sleep 0.3
echo -ne 'Terminando: | \r' && sleep 0.3
echo -ne 'Terminando: / \r' && sleep 0.3
echo -ne 'Terminando: OK \r' && sleep 2s
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

# sáb 17 dic 2022 19:14:01 CST
# mar 03 ene 2023 19:53:42 CST