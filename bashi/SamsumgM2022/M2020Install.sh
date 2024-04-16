#!/bin/bash

echo "Ximena bash scrip [Versión 1]"
echo "(c) Corporation. Todos los derechos reservados, "
echo "[ ██ Instalador de Controladores Impresora Samsumg  M2020, se bajara del servidor que en seguida se montara a los repositorios"
echo ""
    sudo bash -c 'echo "deb http://www.bchemnet.com/suldr/ debian extra" >> /etc/apt/sources.list'
    wget http://www.bchemnet.com/suldr/pool/debian/extra/su/suldr-keyring_2_all.deb
        sudo dpkg -i suldr-keyring_2_all.deb
		#Samsung Unified Linux Driver Repository Keyring

    sudo apt update
    apt search suld-driver
        sudo apt install suld-driver2-1.00.39 -y
		#Samsung Unified Linux Driver2


echo "[ ██ ::::::::::Tareas terminadas::::::::::"
echo "."

#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

# lun 05 sep 2022 13:34:23 
# mié 28 sep 2022 20:41:29 CDT
# vie 07 oct 2022 13:24:53 CDT

