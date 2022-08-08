#!/bin/bash

#Creamos 9 archivos
touch archiv1 archiv2 archiv3 archiv4 archiv5 archiv6 archiv7 archiv8 archiv9

#Le sacamos todos los permisos a los archivos
chmod a-rwx archiv*

#Listamos solo los archivos creados para poder verificar que le retiramos los permisos
ls -al archiv*

