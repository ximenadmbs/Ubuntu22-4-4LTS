# Ubuntu Server 22, y Xubuntu 22:

### 1. Instaciones, una ves instalado el sistema actialisar el sistemas: ✅

	sudo apt update
  
	sudo apt upgrade
  
	sudo apt autoclean
  
### 2. Instalamos el servisio SSH para la su administracion remota, asi podremos copiar y pegar comandos desde otro pc con asistencia grafica. ✅ ✅

    sudo apt install ssh -y

## poner archivos en carpetas
- por alguna extrana razon al instalar y desistalar paquetes snap, esta barre con lascarpetas de usuario que esten vasias, rompiendo y dejando inservibles como enlace simbolico, asi que de inicio ve poniendo un archivo oculto en todas las carpetas .txt sin contenido.

### 2.1 Revisamos el estabo del servicio , tendra que estar en enable. ✅ ✅

    sudo service ssh status

---------------------------------------
## 3. Una ves en el terminal con asistencia grafica y conectado via remota con SSH seguiremos los sig pasos: ✅ ✅
Crearremos un archivo de instrucciones para la instalacion de paquetes nesesarios.
Dentro dela carpeta rais de usuario ~/ crearemos el siguiente archivo .sh

    touch installUbuntuServ.sh

> Lo editaremos con nano.

    sudo nano installUbuntuServ.sh

Copiamos y pegamos el contenido del archivo **installUbuntuServ.sh, o installApps-XubuntuLTS.sh** guardamos y cerramos damos permisos de ejecucion, y ejecutamos las instrucciones con.

    sudo chmod 777 installUbuntuServ.sh

    ./installUbuntuServ.sh


---------------------------------------
## 4. Se instalaran los siguientes apps para el terminal. ✅

* sudo add-apt-repository universe
* sudo apt install ubuntu-restricted-extras -y
* sudo apt install neofetch -y
* sudo apt install samba -y
* sudo apt install bpytop -y  (opcion)
* sudo apt install lm-sensors -y
* sudo apt install ufw -y
* sudo apt install fish -y
* sudo apt install htop -y
* sudo apt install net-tools -y
* sudo apt install proftpd -y

---------------------------------------
### 4.1 Revisamos el estabo del servicio , tendra que estar en enable. ✅

    sudo service smbd status
  
### 4.2 Revisamos el estabo del servicio , tendra que estar en enable. ✅

    sudo service ufw status

    sudo ufw status

Activar y desactivar el servicio si es nesesario:
> Activar

    sudo ufw enable

> Desactivar

    sudo ufw disable

---------------------------------------
# 5 Configurar el servicio FTP ✅

Revisamos el estado del servicio FTP:

    sudo service proftpd status

### 5.1 Conficuarcion del archivo. brimos y editamos con Nano:

    sudo nano /etc/proftpd/proftpd.conf

Modificaremos el archivo, creamos una copia de seguridad , borramos el contenido y pegaremos las siguientes lineas guardamos y cerramos recatamos el servicio.

``` bash
Include /etc/proftpd/modules.conf
UseIPv6 on
<IfModule mod_ident.c>
        IdentLookups off
    </IfModule>
        ServerName "Ubuntu22"
        ServerType standalone
        DeferWelcome off
        DefaultServer on
        ShowSymlinks on
        TimeoutNoTransfer 600
        TimeoutStalled 600
        TimeoutIdle 1200
        DisplayLogin welcome.msg
        DisplayChdir .message true
        ListOptions "-l"
        DenyFilter \*.*/
        Port 21
<IfModule mod_dynmasq.c>
    </IfModule>
        MaxInstances 30
        User proftpd
        Group nogroup
        Umask 022 022
        AllowOverwrite on
        TransferLog /var/log/proftpd/xferlog
        SystemLog /var/log/proftpd/proftpd.log
    <IfModule mod_quotatab.c>
        QuotaEngine off
</IfModule>
    <IfModule mod_ratio.c>
        Ratios off
</IfModule>
    <IfModule mod_delay.c>
        DelayEngine on
</IfModule>
    <IfModule mod_ctrls.c>
        ControlsEngine off
        ControlsMaxClients 2
        ControlsLog /var/log/proftpd/controls.log
        ControlsInterval 5
        ControlsSocket /var/run/proftpd/proftpd.sock
</IfModule>
    <IfModule mod_ctrls_admin.c>
        AdminControlsEngine off
    </IfModule>
        Include /etc/proftpd/conf.d/

AccessGrantMSG "Binvenida"
AccessDenyMSG ":::ERROR AL CONECTAR:::"

DefaultRoot ~ 
```

### 5.2 Recargar el servicio:

    sudo service proftpd reload

---------------------------------------
# 6 Cambiar a ip estatica  [conoscamos la ip] ✅

    sudo nano /etc/netplan/00-installer-config.yaml

Pegar el contenido en el archivo

```bash
# This is the network config written by 'subiquity'
network:
  ethernets:
    enp0s3:
      addresses: [192.168.100.150/24]
      gateway4: 192.168.100.1
      nameservers:
        addresses: [192.168.100.1, 8.8.8.8]
  version: 2
  ```

* Donde la dirección addresser .150 la cambiaremos por la dirección que desairemos.

* gateway4 es la dirección donde nos conectamos al rauter que es la puerta de enlace. esta dirección la copiamos en la linea addresser.

Para aplicar los cambios ejecutamos el siguiente comando:

    sudo netplan apply

### 7 Cambiar zona horaria ✅

    sudo dpkg-reconfigure tzdata

[America] [mexico cd mexico]

---------------------------------------
#### 8 Configuracion del servicio de carpetas compartidas samba ✅

Abrimos el archivo de configuración para pegar los siguientes lineas.

    sudo nano /etc/samba/smb.conf 

> Pegamos:

``` bash
=====Share Definitions=====

[sambaShare]
	valid users = ximena
	path = /home/ximena/carpetaRED
	read only = no
	browseable = yes
```
* **[sambaShare]** : sera el nombre de identificación de la dirección a la carpeta.

* **valid user**: sera los usuario validos que podrán leer la carpeta.

* **path**: sera la dirección local de la carpeta u unidad a compartir en la red.

* **read only**: sera la opción de lectura solamente sera [no]

* **browseable**: si la carpeta podrá ser vista en los buscadores esta como [yes]

### 8.1 Dardemos de alta alos usuario las credenciales de acceso:

    sudo smbpasswd -a ximena

> [ximena se refiere al usuario que tendrá las credenciales necesarias para leer y modificar la carpeta compartida].

Las siguientes lineas las llenaremos con es password para el usuario:

    New SMB password:
    Retype new SMB password:

> [contraseña y confirmar]

Reiniciamos el serbicio samba:

    sudo service smbd restart

Accitamos el contrafiego, dando de alta el puerto del servicio samba si es necesario.

    sudo ufw allow samba

>(Confirmara con Reglas actualizadas , v6)

### 8.2 Anotaciones finales de samba: conoser la direccion de la carpeta compartida:
Cualquier de los dos comondos es valido para seber la ip:

    ifconfig
    ip a

y construimos la direccion de la siguiente manera:
smb://192.168.1.150/sambaShare/

---------------------------------------
### 9 Configuraciones para discos en equipos red, por ssh ✅
Cuando al querer copiar un archivo no se puede en un disco interno montado como ntfs de windows.
revisamos las letras de los discos:

    sudo fdisk -l

nos fijamos en la ruta:

```
Dispositivo   Comienzo      Final   Sectores Tamaño Tipo
/dev/sdd1         2048   97243135   97241088  46.4G Datos básicos de Microsoft
/dev/sdd2     97243136 1073803263  976560128 465.7G Datos básicos de Microsoft
/dev/sdd3   1073803264 7814035455 6740232192   3.1T Datos básicos de Microsoft
```
Donde montaremos la particion:  **/dev/sdd2**  de la sig forma: 

> Desmontamos y ejecutamos: 

    sudo ntfsfix /dev/sdd2

>linea de salida constestacion:

``` bash
ximena@pc-amdfx:~$ sudo ntfsfix /dev/sdd2
Mounting volume... OK
Processing of $MFT and $MFTMirr completed successfully.
Checking the alternate boot sector... OK
NTFS volume version is 3.1.
NTFS partition /dev/sdd2 was processed successfully.
```

### 9.1 Para montajes simples de un dispositivo usb o una unidad de disco externa:
Crearemos la carpeta donde se alijara la unidad:

    mkdir /mnt/hddrosa

y con siguiente instrucción montaremos la unidad:

    sudo mount /dev/sde2 /mnt/hddrosa

> Donde previamente sabemos el nombre de la unidad **/dev/sde2** del ejercicio anterior.

Para desmontar con el siguiente comando:

    sudo umount /dev/sde2

### Instalar interfas grafica de Xubuntu

    sudo apt install --no-install-recommends xubuntu-desktop

---------------------------------------

### Paqueteria instalada:

# Snap
jdowloader2
krita* (se rompio despues de querer desistalar el imagemagick)
spotify

# Flatpak
calibre
Discord inc
google
selector de color
ariana
VLC
ExtensionManager

# .deb de la tienda
wine
krita
firefox
inkscape
wps
k3b
edge
notepadqq
tilix


## poner archivos en carpetas
- por alguna extrana razon al instalar y desistalar paquetes snap (emulador dosbox), esta barre con lascarpetas de usuario que esten vasias, rompiendo y dejando inservibles como enlace simbolico, asi que de inicio ve poniendo un archivo oculto en todas las carpetas .txt sin contenido.

# Tema de Firefox 

- instalar Firefox Color

		https://color.firefox.com/?theme=XQAAAAIZAQAAAAAAAABBqYhm849SCia2CaaEGccwS-xMDPr4zmCk-pWgdupc86JBvd1E8G7op8zBPYc2KKtk7a7XxqoELfAddCy4XHYEexXA7Nc_KrjsFLVi9iT9r_SwduHN10rUP1Aa71jgna09VdriOHjkY1ga1UyF_aUfoHKNa95Qh_O5aGMkZ-an0jq--aNh1FSChVjp3P_89P3uXdrPO9F6HXSCCd73Z6-p9rv2OoX2euibzCsOmsyplRNaeoXK_ffZM-A
		
# Krita .deb en espanol
- si instale el krita desde la tienda en formato .deb vendra en ingles, para ponerlo en espanol:
		sudo nala install krita-l10n
		
### Para cambiar permiso edicion de una carpeta y su contenido:

		sudo chmod o+w . -R
		
Ruta temas: /home/ximena/.themes

### Crear enlaces simbolicos:

		sudo ln -s /var/spool/cups-pdf/ximenam ~/PDFs
		

jue 10 nov 2022 11:07:46 CST
mar 06 dic 2022 13:17:46 CST
