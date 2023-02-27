# Manejo y monitoreo de procesos y recursos del sistema


Para ver todos los procesos que corren en el sistema podemos usar el comando ps. Recuerda que puedes ver la documentación de este comando con el comando man ps.

El comando grep nos ayuda a filtrar el resultado de un comando o archivo dependiendo de las palabras de cada línea. Para esto también vamos a usar el pipe (|), un símbolo que nos ayuda a enviar el resultado de un comando a un segundo comando.

Por ejemplo, el comando ps aux | grep platzi imprime los procesos activos del sistema y, con ayuda del pipe, envía la lista al comando grep para filtrar el resultado, mostrando únicamente las líneas con la palabra platzi.

## Comandos
 
ps: Muestra los procesos corriendo. Modificadores:

```bash
aux
```
Muestra todos los procesos
```bash
jobs
```
Al igual que el comando anterior, muestra los procesos. A diferencia de ps, es un comando interno de la terminal
```bash
fg
```
Abre un proceso que estaba pausado
```bash
nohup
```
Genera un archivo llamado “nohup.out” que muestra toda la información que produjo un proceso
```bash
grep
```
Nos ayuda a filtrar el resultado de un comando o el contenido de un archivo dependiendo de las palabras (o incluso expresión regular) que le indiquemos
|
|
Símbolos especiales
|
```bash
"|" Pipe
```
Envia el standard output de un comando al standard input de otro.
```bash
"&" Ampersand
```
Envia un proceso al background
```bash
"./"
```
Ejecuta un archivo