# Los usuarios, una tarea vital en el proceso de administración del sistema operativo

El comando ``id`` nos muestra el identificador único (uid) de cada usuario en nuestro sistema operativo. El ID 0 está reservado para el usuario root.

Con el comando ``whoami`` podemos ver con qué usuario estamos trabajando en este momento. Podemos ver todos los usuarios del sistema leyendo el archivo /etc/passwd.

Las contraseñas de los usuarios están almacenadas en el archivo etc/shadow, pero están cifradas. Y solo el usuario root tiene permisos de lectura/escritura.

Para cambiar la contraseña de nuestros usuarios usamos el comando passwd.

/etc/passwd
```
root:x:0:0:root:/root:/bin/zsh
|   | | | |    |     |
|   | | | |    |     └> [shell]
|   | | | |    └> [carpeta personal] 
|   | | | |       ruta de la carpeta del usuario
|   | | | └> [info del usuario] 
|   | | |    [nombre,ubicacion,telefono,...]
|   | | └> [id de grupo] 
|   | |    (info de grupos en /etc/groups)
|   | └> [id De usiario]  
|   |    [0 para root, 
|   |    1-99 para usuarios predefinidos,
|   |    100-999 para cuentas admiinistrativas del sistema]
|   └> [Contraseña] 
|      Una x indica que la contraseña se
|      encuentra encriptada en /etc/shadow. 
|      Debe tener entre 6 y 8 caracteres como  mínimo.
└> [Nombre de usuario] 
   Nombre que identifica al usuario en el sistema.
   Debe tener entre 1 y 32 caracteres.
```

etc/shadow
```
slice:$1$NLJJ6$ow5g1|1NgYITqqQQy5D21:14234:0:99999:7::
|    |                              |     | |     | ||
|    |                              |     | |     | |└> [Caducidad]
|    |                              |     | |     | |   Días a los que se deshabilita
|    |                              |     | |     | |   la cuenta contados 
|    |                              |     | |     | |   desde el 1 de enero de 1970.
|    |                              |     | |     | └> [Inactivo]
|    |                              |     | |     |   Días a los que se deshabilita la cuenta 
|    |                              |     | |     |   después de que caduque la contraseña.
|    |                              |     | |     └> [Aviso] 
|    |                              |     | |        Días a los que el usuario 
|    |                              |     | |        será avisado de que debe 
|    |                              |     | |        cambiar la contraseña 
|    |                              |     | |        antes de que ésta caduque.
|    |                              |     | └> Máximo
|    |                              |     |   Días durante los que la contraseña en válida. 
|    |                              |     |   Al terminar el usuario tiene que cambiar la contraseña. 
|    |                              |     └> Mínimo
|    |                              |        Días que deben pasar como mínimo para que el 
|    |                              |        usuario pueda cambiar la contraseña.
|    |                              └> Último cambio 
|    |                                 Días que han pasado desde la última vez 
|    |                                 que la contraseña fue cambiada contados 
|    |                                 desde el 1 de enero de 1970. 
|    └> Contraseña
|       Contraseña encriptada. La forman entre 13 y 24 caracteres (a-z, A-Z, 0-9, \. /). 
|       Si comienza por el carácter $, inidca que la contraseña se ha encriptado
|       usando un algotimo distinto de DES.
|       Si comienza por $1$, el algoritmo de cifrado está basado en MD5.
└> Nombre de usuario
   Nombre que identifica al usuario en el sistema.
   Debe tener entre 1 y 32 caracteres.
```

# algunos comandos de la clase
```bash
id 
```
( ver id de los usuarios )
```bash
whoami 
```
(¿Quién soy yo?)
```bash
cat /etc/passwd 
```
(ver todos los usuarios)
```bash
cat /etc/shadow 
```
(ver contraseñas sombra)
```bash
passwd <usuario>
```
( cambia contraseña usuario) 