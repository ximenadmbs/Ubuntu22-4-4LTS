#!/bin/bash

echo " "
echo "+--------------------------------------------------+"
echo "|      Ximena bash scrip [Versión 1.2]             |"
echo "|  (c) Corporation. Todos los derechos reservados. |"
echo "|                                                  |"
echo "|     *** SCRIPT PARA EL OPCIONES DE WINE ***      |"
echo "+--------------------------------------------------+"
echo " "
echo " SELECCIONA UNA OPCIÓN:"
echo " 1.-Configuracion de Wine"
echo " 2.-Agregar .EXE / Quitar Desinstalar Programas .EXE"
echo " 3.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
    case $OPCION in
        1)winecfg;; 
        2)wine uninstaller;;
        3) exit;;
        *) echo " OPCIÓN NO VÁLIDA "
exit 1;;
    esac
exit 0

# mie 09 nov 2022 14:45:34
# jue 08 dic 2022 13:32:20 CST