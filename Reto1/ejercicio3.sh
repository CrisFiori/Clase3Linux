#!/bin/bash
#se crean los directorios para alojar los archivos 1 y 2
mkdir foo
mkdir foo/empty
mkdir foo/dummy

#Se crean los archivos 1 y 2 dentro de la carpeta dummy
touch foo/dummy/file1.txt 
touch foo/dummy/file2.txt

#Solicitamos que se introduzca un texto que sera luego ingresado en el archivo file1.txt
echo "Introduzca un texto: " 
read texto
if [ -n "$texto" ]; then
	echo $texto >> foo/dummy/file1.txt
else
	echo Que me gusta bash!!!! >> foo/dummy/file1.txt

fi
#movemos el archivo file2.txt dentro de la carpeta empty

cp foo/dummy/file1.txt foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty/

