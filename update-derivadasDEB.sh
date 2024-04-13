#!/bin/bash
echo " "
echo "+-----------------------------------------------------+"
echo "|          Ximena bash scrip [Versión 1.2]            |"
echo "|           https://github.com/ximenadmbs             |"
echo "|  © 2022 Corporation. Todos los derechos reservados. |"
echo "|                                                     |"
echo "|   *** SCRIPT ACTUALISADOR DERIVADAS DEBIAN ***      |"
echo "+-----------------------------------------------------+"
echo " "
echo -e "\e[0;38;5;208m█ Actualisador de paquetes y sistema, se iniciara las actualisaciones.\e[0m"
echo ""
    sudo apt update
echo ""
echo -e "\e[0;38;5;208m█ Se Actialisaron los repositorios.\e[0m"
echo "."
    sudo apt upgrade -y
echo ""
echo -e "\e[0;38;5;208m█ Se actualisaron los paquetes seleccionados\e[0m"
echo "."
    sudo apt autoclean
    sudo apt autoremove
echo ""
echo -e "\e[0;38;5;208m██ ::::::::::Tareas terminadas::::::::::\e[0m"
echo " "
    date
echo " "

#chmod 777 update-derivadasDEB.sh
#Ejecutar con ./update-derivadasDEB.sh

# lun 05 sep 2022 13:34:23 CDT
# mié 09 sep 2022 12:52:45 CDT
# mar 01 nov 2022 13:01:05 CST
# jue 22 dic 2022 19:08:50 CST