#!/bin/bash
echo -e "\e[0;38;5;208m[   Actualisador e intalador de completentos para Ubuntu LTS.   ]\e[0m"
echo -e "\e[0;38;5;208m[Instalador de Controladores Impresora SamsumgM2020, se bajara  ]\e[0m"
echo -e "\e[0;38;5;208m[del servidor que en seguida se montara a los repositorios      ]\e[0m"
	             echo "-----------------------------------------------------------------" ; sleep 2s
	echo " "
    sudo bash -c 'echo "deb http://www.bchemnet.com/suldr/ debian extra" >> /etc/apt/sources.list'
    wget http://www.bchemnet.com/suldr/pool/debian/extra/su/suldr-keyring_2_all.deb
        sudo dpkg -i suldr-keyring_2_all.deb
		#./packs/ Samsung Unified Linux Driver Repository Keyring

    sudo nala update
    apt search suld-driver
        sudo nala install suld-driver2-1.00.39 -y
		#Samsung Unified Linux Driver2


echo -e "\e[0;38;5;208m✅ Tareas terminadas.\e[0m" ; sleep 1s
echo " "
echo -ne 'Terminando: - \r' ; sleep 0.3
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

#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

# lun 05 sep 2022 13:34:23 
# mié 28 sep 2022 20:41:29 CDT
# vie 07 oct 2022 13:24:53 CDT
# mar 16 abr 2024 19:04:43 CST


