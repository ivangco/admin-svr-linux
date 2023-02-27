# Interacción con archivos y permisos

Con el comando ls `-l` podemos observar la lista de archivos de nuestro directorio actual con información un poco más detallada. El primer campo nos indica los diferentes permisos para cada archivo o directorio. Por ejemplo: `-rwxrw-r--`.

El primer carácter nos indica si tenemos un 
- archivo (`-`), 
- enlace simbólico (`l`) 
- directorio (`d`).

Los siguientes caracteres se dividen en grupos de 3: 
- lectura (`r`), 
- escritura (`w`)
- ejecución (`x`). 

El primer grupo son los permisos del usuario que creó ese archivo, el segundo para el grupo al que pertenece este usuario y el tercero para cualquier otro usuario de tu sistema operativo.

Los grupos nos ayudan a darle los mismos permisos a diferentes usuarios sin necesidad de asignarlos a cada uno individualmente. Todos los usuarios que pertenezcan al grupo tendrán los mismos permisos.

Si en vez de estas letras encuentras un guion significa que ese usuario o grupo de usuarios no tiene permiso para esa acción en particular.

Por ejemplo: `-rwxrw-r--` nos indica que trabajamos con un archivo. Todos los usuarios del sistema tienen permisos de lectura. El usuario creador y su grupo tienen permiso de escritura. Y solo el usuario creador puede ejecutar el archivo.

También podemos encontrar estos permisos como 3 números del 1 al 7. Estos números son la suma de los 3 caracteres de permisos para cada usuario o grupo.

- `-` = 0
- `x` = 1
- `w` = 2
- `r`= 4
  
Por lo tanto, los permisos de nuestro archivo de ejemplo serían: 7 (1+2+4) 6 (0+2+4) 4 (0+0+4).

Para cambiar los permisos de un archivo o directorio podemos usar el comando chmod + a quién queremos añadir o quitar los permisos:

- El usuario propietario: `u`.
- El grupo,` g`.
- El resto de usuarios, `o`.
- Para todos, `a`.

Por ejemplo, para añadir permisos de ejecución a nuestro usuario propietario usamos:
```bash
chmod u+x nombre-del-archivo
```
También podemos cambiar al usuario propietario del archivo con el comando chown.
```bash 
sudo chown nuevo-usuario:grupo-usuarios nombre-del-archivo
```

# Extra

Permisos estan compuestos por 10 caracteres
- rw- rw- r-- 

1er caracter corresponde al tipo de archivo
- '-' = archivo
- 'd' = directorio
- 'l' = enlace simbólico

Asignación de permisos en grupos de 3
- 'u' = usuarios (corresponde caracter del 2 al 4)
- 'g' = grupos (corresponde caracter del 5 al 7)
- 'o' = otros (corresponde caracter del 8 al 10)
- 'a' = todos

Tipo de permisos
- 'r' = lectura
- 'w' = escritura
- 'x' = ejecución
- '-' = sin permiso

- '+' añade permisos
- '-' quita permisos

Formato octal
- '0' = (0+0+0) = Sin permisos = ---
- '1' = (0+0+1) = Ejecución = --X
- '2' = (0+2+0) = Escritura = -w-
- '4' = (4+0+0) = Lectura = r--
- '7' = (4+2+1= = Eje, Esc, Lec = rwx


```bash
chmod | cambiar permisos (chmod u-r archivo.txt), forma rapida asignar permisos a todos 'chmod +x'
```


```bash
chown | (Change Owner), cambia la propiedad d
```