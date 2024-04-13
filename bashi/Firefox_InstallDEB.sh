#!/bin/bash

#Archivo plantilla para ejecuciones de comandos y direcciones largas para servidores o con terminales sin acceso de corte y pega desde el terminal.
#Generalmente se ejecutara con sudo para permiso de usuiario.
#En Debian11 se tenda que ejecutar sin el comando sudo y ejecuarlo con super usuario su.

echo "----------------------------------------------------" 
echo " Vamos a desistalar Firefox vercion Snap e intalare " 
echo "   de vercion de paquete .DEB para su integraciion  " 
echo "                                      Ver 1.0.3-2024"
echo "----------------------------------------------------" 

#Entonces, para instalar Firefox Deb en Ubuntu 22.04 LTS y superior, esto es lo que debe hacer. 
#Instalación de Firefox a través de Apt (no Snap)

#Paso 1 : desinstale Firefox Snap:
	sudo snap remove firefox
	sleep 2s

#Paso 2 : cree un conjunto de claves APT (si aún no existe):
	sudo install -d -m 0755 /etc/apt/keyrings
	sleep 2s

#Paso 3 : Importe la clave de firma del repositorio APT de Mozilla (si wgetfalta, instálela primero):
	wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
	sleep 2s

#Paso 4: agregue la clave de firma de Mozilla a su lista de fuentes:
	echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
	sleep 2s

#Paso 5: Establezca la prioridad del paquete Firefox para garantizar que siempre se prefiera la versión Deb de Mozilla. Si no haces esto, el paquete de transición de Ubuntu podría reemplazarlo, reinstalando Firefox Snap:
	echo '
	Package: *
	Pin: origin packages.mozilla.org
	Pin-Priority: 1000
	' | sudo tee /etc/apt/preferences.d/mozilla
	sleep 2s

#Paso 6 : Finalmente, instale Firefox DEB en Ubuntu:
	sudo apt update && sudo apt install firefox

#Fuente : https://www.omgubuntu.co.uk/2022/04/how-to-install-firefox-deb-apt-ubuntu-22-04

	echo -ne 'Instalacion terminada: Ok \r'
    sleep 2s

# mar 26 mar 2024 09:13:50 CST