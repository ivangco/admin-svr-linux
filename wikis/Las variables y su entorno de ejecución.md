# Las variables de entorno 

son un conjunto de variables globales en nuestros sistemas que nos permiten acceder de forma más fácil a una ruta o un conjunto de comandos difíciles de recordar. Podemos usarlas en la terminal y en los archivos de bash.

El comando env nos permite ver todas las variables de entorno de nuestro sistema.

```bash
#!/bin/bash
# Verificar la cantidad de espacio
# Desarrollado para platzi by  Jhon Edison Castro SÃ¡nchez @edisoncast


CWD=$(pwd)
FECHA=$(date +"%F%T")
echo $fecha

df -h | grep S. > uso_disco_"$FECHA".txt
df -h | grep /dev/mapper/ubuntu--vg-root >> uso_disco_"$FECHA".txt

echo "Se ha generado un archivo con nombre uso_disco$FECHA.txt en la ubicacion $CWD" 
```