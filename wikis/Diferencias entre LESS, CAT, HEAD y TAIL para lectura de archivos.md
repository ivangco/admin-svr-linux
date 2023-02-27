# Diferencias entre LESS, CAT, HEAD y TAIL para lectura de archivos
```bash
cat
```
 Muestra un archivo sin paginar
```bash
less
```
 Muestra un archivo paginado. Pulsando “/” y escribiendo una palabra, puedo buscar las coincidencias de la misma en el archivo. Con la tecla “n” me muevo entre coincidencias hacia adelante, y con shift + “n” me muevo entre coincidencias hacia atras. Con espacio cambio de página. Salgo con “q”
```bash
tail
```
 Muestra las últimas 10 líneas de un archivo específico. Con la opción “-n” puedo modificar la cantidad de líneas que veo. Con la opción -f puedo poner los cambios en escucha
```bash
head
```
 Muestra las primeras 10 lineas de un archivo específico. Con la opción “-n” puedo modificar la cantidad de líneas que veo.
```bash
man
```
 Muestra ayuda sobre comandos.