# zsh Instalaciones para derivadas de Ubuntu

### instalamos el bash de zsh en la terminal,  como usuario comun.

	sudo apt install zsh

### Instalamos el servicio de git si es que no esta instlalado, sevisamos la vercion si es que esta instalada.

	sudo apt install git

	git --version

### Instalalamos oh my zsh desde los repositorios de github

	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

> Se edita el archivo .zshrc

    nano .zshrc

Editamos la linea que continene **ZSH_THEME="robbyrussell"** por las sigientes temas, sobre escribimos.

***temas: bira, biraXim, gnzh, rkj-repos, xiong-chiamiov***

Guardamos y cerramos.

> actialisar:

    source .zshrc

### Temas colores Gogh-Co:

Clonamos el repositorio de github desde **~/**

	git clone https://github.com/Gogh-Co/Gogh.git gogh

Desde **~/gogh** le daremos permisos para gogh.sh con 

	chmod 777 gogh.sh

> y ejecutamos

	 ./gogh.sh

Podemos instalar todo el paquete con **ALL** o elejimos de la lista sigionete los temas seleccionados.
```
( 52 )	Dracula
( 62 )  Fairyflossdark
( 67 )	Foxnghtly
( 84 )	Harper
( 91 )  Horizon Dark
( 154 )	Omni
( 177 ) Rose Pine
( 178 ) Rose Pine Dawn
( 179 ) Rose Pine Moon
( 236 ) Wild Cherry
```

### Instlalacion de Auto completado zsh:

Después de instalar ZSH, es bueno asegurarse de que sea el shell predeterminado. Esto evitará que inicie el shell ZSH cuando use su herramienta.

	chsh -s $(which zsh)

Para confirmar, ingrese el siguiente comando:

	which $SHELL
	
Después de instalar y configurar el shell ZSH, podemos configurar el complemento zsh-autosuggestions. Comience por clonar las zsh-autosuggestions:

	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

Finalmente, agregue el siguiente comando a su archivo .zshrc:

	source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

> actialisar:

    source .zshrc

### Instlalacion de Syntax para zsh, 
Pegamos en la terminal el sigiente repositorio de git, unabes en la carpeta home la movemos al directorio **~/.zsh**

	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

Ejecutamos la siguiente instruccion ala terminal para que se genere la ruta en el archivo .zshrc

```bash
echo "source ${(q-)PWD}/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```
> la ruta donde que se escrivio en el archivo .zshrc es:

	source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

> actialisamos:

    source .zshrc

----------------------------------------------------
### Instalalamos oh my zsh para Root:
	
	sudo su

    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

> Se edita el archivo .zshrc en la carpeta **/root**

	cd /root

    nano .zshrc

Editamos la linea que continene **ZSH_THEME="robbyrussell"** por las sigientes temas, sobre escribimos.

***temas: bira, biraXim, gnzh, rkj-repos, xiong-chiamiov***

> actialisamos:

    source .zshrc

### Instlalacion de Auto completado zsh para root:

Abrimos el archivo .zshrc de la carpeta root

	nano /root/.zshrc

Para root la direcion es directorio del usuario de la carpeta: ~/.zsh donde se instalaron los archivos , asi que tenemos que ridireccionar a la carpeta del usuario que contiene la carpeta zsh-autosuggestions. **"usuario"**

	source /home/usuario/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

> GRabamos y actialisamos:

    source .zshrc

----------------------------------------------------
#### Ruta de configuraciones de color tilix:
	
	/home/usuario/.config/tilix/


### Alias: para .zshrc

Abrimos el archivo .zshrc del usuario y del root y pegamos las siguientes lineas.

	nano .zshrc

	nano /root/.zshrc

> Pegamos al Final:

```bash
	alias ideb="sudo dpkg -i"
	alias rdeb="sudo apt remove"
	alias iapt="sudo apt install"
	alias alh="ls -a -l -h"
	alias iflat="flatpak install"
	alias rflat="flatpak uninstall"
	alias lh="ls -lh"
	alias upd="pkcon refresh"
	alias upg="pkcon update"

	date
```