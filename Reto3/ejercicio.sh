#!/bin/bash

#Solicito nombre de usuario para almacenarlo en variable y poder ubicarme en la carpeta del mismo
echo "Por favor me indicas tu nombre de usuario: "
read user

#Me situo sobre la carpeta del usuario
cd /home/$user

#Creamos una nueva carpeta y accedemos a ella
mkdir nueva_carpeta
cd nueva_carpeta

#Creamos un nuevo archivo dentro de la carpeta y lo renombramos
touch archivo_nuevo.txt
mv archivo_nuevo.txt archivo_viejo.txt

#Le agregamos un texto al archivo previamente renombrado y le asignamos permisos completos de lectura, escritura y ejecucion
echo "Nueva linea de texo" >> archivo_viejo.txt
chmod a=rwx archivo_viejo.txt

#Nos volvemos a situar en la carpeta del usuario y generamos un Hard Link al archivo
cd ..
ln /home/$user/nueva_carpeta/archivo_viejo.txt enlace.ln

#Removemos todo el contenido de la carpeta y el enlace simbolico
rm enlace.ln
rm -rf nueva_carpeta

