# Comandos terminal git modificaciones posteriores, respaldo github:

## Instalacion de Nuevo proyecto y repositorio.
agregar nueva carpeta de proyecto arrastrando al area gris, los primeros comandos a agregar seran los siguientes en este orden.

    git init

    git config --global user.name "ximenadmbs"

    git config --global user.email "ximenacbd@yahoo.com"

Lo sigiente es crear nuevo repositorio para que nos de los las direcciones: ejemplo:

    git remote add origin https://github.com/ximenadmbs/SamsumgM2022.git

    git branch -M main 

    git push -u origin main

----------------------------------------------
## Actualisar el Repositorio:

### Agregar todo en la carpeta actual:
   
    git add .

### Agregamos archivo para respaldo con:
    
    git add archivo.mod

### Revisamos el status de los archivos
    
    git status -s

### Realimentaremos en el comentamos de las modificaciones realisadas con:
    
    git commit -m "Se modifico"

### Subir el o los archivos al repositorio de github
    
    git push