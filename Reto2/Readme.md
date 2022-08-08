**Medidas de seguridad a implementarse:**
    
- Modificar el permiso de acceso a la carpeta del propietario (Roxs) , para que solo este pueda acceder
  y modificar sus archivos
    
- Modificar el archivo Lista_Precios para que solo el propietario pueda manipular el mismo.

**Usuarios afectados**

- Los usuarios que no podran acceder al archivo seran Grupos, y Otros. Estos perderan el privilegio
  de Lectura, escritura y ejecucion sobre Lista_Precios
  
**Como quedaran los permisos**

- User : Roxs > Lista_Precios > -rwx------
- Carpeta /home > -rwx------

Para realizar los cambios ejecutaremos chmod u=rwx Lista_Precios 
Verificamos que los permisos esten correctos simplemente con ll 


    
