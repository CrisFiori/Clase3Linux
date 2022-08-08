#!/bin/bash
#Descarga desde el enlace del ejercicio
wget https://es.wikipedia.org/wiki/DevOps

#Solicitamos al usuario la busqueda
echo "Que desea buscar en el texo?: "
read busqueda

#Se realiza la busqueda y se devuelven las lineas que contienen dicho contenido
awk "/$busqueda/  {print FNR}" DevOps
