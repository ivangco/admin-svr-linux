# bases de bash

Los archivos de Bash usan la extensión .sh. La primera línea la utilizamos para definir un intérprete, si nuestro archivo debe ejecutarse con Python, Bash o cualquier otro lenguaje: #!/bin/bash.

Las variables se definen de la siguiente manera:
```
VARIABLE="Valor de la variable, que en este caso es un string."
Y se utilizan con el signo $ seguido del nombre de la variable:
```
echo $WELCOME
También podemos ejecutar los comandos que normalmente usamos en la terminal, así como ls, pwd, mkdir, entre otros.
```
# Ejecutar pwd
pwd
```

```
# Guardar el resultado de pwd en una variable
$COPY_PWD=$(pwd)
Todas las líneas de comentarios deben comenzar con el signo #:

# Esto es un comentario...
```