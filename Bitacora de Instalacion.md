## Pos-instalación

En una maquina virtual la red debe estar configurada como **adaptador puente**  para ver la ded local **server-xeon** mas sobre redes: [[DireccionRedes100.txt]]
		
		smb://192.168.100.22/xena
		usuario: xenon
		passw: *****
### Correr el instalador .sh
#### Instalaciones, una ves instalado el sistema actualizar el sistemas: 

- Ejecutas el instalador **installApps-UbuntuLTS.sh** , correrán la actualizaciones, y la instalación del gestor de paquetes nala. 

		sudo apt update && sudo apt upgrade -y && sudo apt autoclean
		sudo apt install nala -y
#### Poner archivos en carpetas
- Por alguna extraña razón al instalar y desinstalar paquetes **snap**, esta barre con las carpetas de usuario que estén vacías, rompiendo y dejando inservibles como **enlace simbólico rotos**, así que de inicio ve poniendo un archivo oculto en todas las carpetas **.txt** sin contenido, de mayor importancia en la carpeta **Escritorio**.

		cd ~/Escritorio/ ; touch .txt && cd ~/Descargas/ ; touch .txt && cd ~/Documentos/ ; touch .txt && cd ~/Imágenes/ ; touch .txt && cd ~/Música/ ; touch .txt && cd ~/Público/ ; touch .txt && cd ~/Vídeos/ ; touch .txt

#### Ruta de ejecución del instalador
Dentro del instalador se manejan las direcciones internas en la carpeta asignando como **./** ala carpeta "madre" : **Ubuntu22-4-4LTS** , así le decimos ala terminal que ./ "estamos aquí en la carpeta", por ejemplo para que la terminal sepa que estamos dentro de la carpeta **Ubuntu22-4-4LTS**

		~/Descargas/Ubuntu22-4-4LTS/installApps-UbuntuLTS.sh
		./installApps-UbuntuLTS.sh

Así partes siempre desde ./ que es la carpeta del proyecto y apartir de aqui te mueves dentro en las carpetas y los archivos.

		~/Documentos/Git_Proyectos/Ubuntu22-4-4LTS/bashi/
		./bashi/

		~/Documentos/Git_Proyectos/Ubuntu22-4-4LTS/bashi/installMenu.sh
		./bashi/installMenu.sh

---------------------------------------
#### Se instalaran los siguientes apps . 
para el terminal desde el instalador, si usar el instalador *bash* este es el listado de programas que se instalan.
```bash
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
```
* sudo add-apt-repository universe
* sudo apt install ubuntu-restricted-extras -y [Commonly used media codecs and fonts for Ubuntu] , se esta ejecutando desde el **installDPKG.sh**
* sudo apt install ufw -y [programa para gestionar un cortafuegos Netfilter]
* sudo apt install proftpd -y [Servidor del protocolo de transferencia de archivos (FTP)]
* 
#### Instalacion de repositorios
En el ejecutable, **installRepo.sh** , 
- universe
- ppa:appimagelauncher-team/stable
- flathub https://flathub.org/repo/flathub.flatpakrepo
- ppa:helkaluin/webp-pixbuf-loader

#### Instalación de paquetes ala carta
Opción 5, del menú del instalador.
En el ejecutable, **pakAlacarta.sh** encuentras toda la paquetera utilizable. 
![[Captura desde 2024-04-15 21-49-33.png]]

#### Notas dela instalacion de LTS 22.04.4
1:21pm - 2:13pm
- flatpak esta instalado en su vercion 1.12.7-1
- libfuse2 esta instalado
-  ⚠El en apartado de instalación delos paquetes de **flatpak** dieron error de instalación
- Obsidian en snap no se instalo, incluir **install obsidian --classic**

		sudo snap install obsidian --classic
		
-  🔴Error de instalacion en .deb **, dropbox, peazip, veracrypt** (not found), esto fue porque no hay vercion en deb, dropbox se instalara directo de la tienda, peazip en flatpak, y veracript desde su pagina,

		sudo flatpak install flathub io.github.peazip.PeaZip
	
	https://www.veracrypt.fr/en/Downloads.html
	- Ejecute de nuevo la opción 8 instalación desatendida
	> ya se están instalando los flatpak
### Reseteo del pc
Actualizar "soporte de idiomas"

Encender el teclado iluminado 

		xset led 3
		xset led off

Una ves que ayas terminado de instalar con la consola el bash **installApps-UbuntuLTS.sh**, reinicias el pc y comienza con la instalaron de las extensiones: [[Exenciones Gnome]]
- Abre en Utilidades, Retoques y en Apariencia, personaliza los Iconos - YaruEX Natural2024, y en GNOME shell - WhiteSur-Dark-purple.

#### Personaliza la interface.
Configuración de las Tipografías tamaños , abre "retoques"
![[tipografias.png]]

---------------------------------------
### Paqueteria instalada:

#### Snap 
- jdowloader2
- krita* [se rompio despues de querer desistalar el [[ImageMagick]]
- spotify
- pdf arrager
- obsidian

#### AppImage #appppImage
* kdenlive-22.08.3-x86_x64_8b0f1934c0385c03bf0720861baa215a
* appimagepool-5.0.0-x86_64_57f732b9d7f041f503bd0afa0bdd6cb3
* balenaEtcher-1.18.11-x64_5137b0c85d3b1050aab7591325f008fb
* deemix-linux-x64-latest_bbab66ef19292a883ddb8708e9c2677f

#### Flatpak #flatpak
- calibre
- Discord inc
- google
- selector de color
- ariana
- VLC
- ExtensionManager

#### Paquetes .deb de sus paginas
> Estos paquetes tienen copias en el servidor.
- Chrome
- ffconverter
- onedriver [quedo obsoleto
- peazip
- veracrypt
- wps office
- Visual estidio code
- webapp-manager  [quedo obsoleto
- edge

#### De la tienda Gnome formato .deb
- wine
- krita
- firefox
- inkscape
- k3b
- notepadqq
- tilix
- foliate [lector de libros ,epub, pero me guta mas **ariana**]
- kompozer
- Gestor de extensiones
- Gestor tipografico
- Darktable (fotografia)
- HandBrake (videos audio)

### Configuraciones para la terminal.
![[Captura de pantalla de 2024-04-13 20-38-55.png]]
#### Configuraciones de la interfaces gráfica
![[Captura de pantalla de 2024-04-13 20-39-25.png]]
#### Tema de Firefox 
> Desinstalar Firefox en formato snap e instalar en formato .deb *si por alguna razón no funcionan las aplicaciones web por ser snap* [[Desistalar Firefox version Snap]]

* Instalar Aplicsciones web en Firefox. [[FirefoxAddon Pwas]]*
- Instalar Firefox Color, Link del tema
		https://color.firefox.com/?theme=XQAAAAIZAQAAAAAAAABBqYhm849SCia2CaaEGccwS-xMDPr4zmCk-pWgdupc86JBvd1E8G7op8zBPYc2KKtk7a7XxqoELfAddCy4XHYEexXA7Nc_KrjsFLVi9iT9r_SwduHN10rUP1Aa71jgna09VdriOHjkY1ga1UyF_aUfoHKNa95Qh_O5aGMkZ-an0jq--aNh1FSChVjp3P_89P3uXdrPO9F6HXSCCd73Z6-p9rv2OoX2euibzCsOmsyplRNaeoXK_ffZM-A

#### Krita .deb en espanol
- si instale el krita desde la tienda en formato .deb vendrá en ingles, para ponerlo en español:

		sudo nala install krita-l10n

### Aplicaciones web
En firefox instala la intencional pwas:  https://addons.mozilla.org/es/firefox/addon/pwas-for-firefox/ , Direcciones de algunas paginas web con webapps. [[WebsApps]]

#### Para cambiar permiso edición de una carpeta y su contenido:
[[ComandosCarpeta]] Ruta temas: 

		/home/ximena/.themes
#### Crear enlaces simbolicos:
[[ComandosCarpeta]]

Eligió la instalación desatendida de paquetes  


jue 10 nov 2022 11:07:46 CST
mar 06 dic 2022 13:17:46 CST
lun 15 abr 2024 21:57:07 CST


