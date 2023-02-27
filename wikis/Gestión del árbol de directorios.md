# Gestión del árbol de directorios

>En Linux y Unix todo es un fichero. Los directorios son ficheros, los ficheros son ficheros, y los dispositivos son ficheros. A veces a los dispositivos se les llama nodos, pero siguen siendo ficheros.

![linux basic directories](https://media.geeksforgeeks.org/wp-content/uploads/20210501124411/dir.png)

Los sistemas de ficheros de Linux y Unix se organizan en una estructura jerárquica, de tipo árbol. El nivel más alto del sistema de ficheros es " / " o directorio raíz. Todos los demás ficheros y directorios están bajo el directorio raíz.

## Descripcion brebe de los ficheros mas importantes de linux.

- /: El slash 
    - representa la carpeta principal. Según lo entiendo es el padre de todos los demás directorios y en palabras simples es la raíz o root.

- /bin: 
    - Directorio de archivos binarios, en esta carpeta están los programas que se utilizan en la terminal como por ejemplo el comando ls, el grep, el cd, etc.

- /sbin: 
    - Esta carpeta también aloja archivos binarios, pero la ‘s’ indica que son del sistema. En este folder podemos encontrar la ejecución de las tareas del sistema como reboot, mount, fsck, etc.

- /boot: 
    - Aquí está la maquinaria de arranque de Linux, o las imágenes del kernel o núcleo.

- /dev: 
    - Aquí van todos los dispositivos de almacenamiento en forma de archivos (en Unix todo es un archivo). Cuando hablo de dispositivos de almacenamiento hablo de un disco duro, un pendrive, un cd, etc. Aquí esta la información de todos estos volúmenes. Todos los dispositivos montados en la maquina Linux empezaran con /dev, por ejemplo, si se ejecuta el comando sudo fdisk -l se vera la estructura de particiones del sistema y como dije recién, empiezan con dev/.

- /media: 
    - En el punto anterior hable de la ruta /dev que almacena los dispositivos montados al sistema. Esta carpeta almacena los puntos de montaje de tales dispositivos.

- /etc: 
    - Aquí van los archivos de configuración de los componentes del sistema operativo y también de los distintos programas que se van instalando en la máquina.

- /home: 
    - Me recuerda a la carpeta users en Windows. Aquí van almacenadas las carpetas de los distintos usuarios que están configurados en el sistema. Por ejemplo /home/Jorge.

- /lib: 
    - Aquí van las librerías esenciales para que los binarios del sistema se puedan ejecutar sin problemas. Si tienes un sistema operativo de 64 bit, tendrás una carpeta de nombre /lib64.

- /opt: 
    - Encargado de alojar las carpetas de los programas instalados en Linux que son de otros propietarios. Mas fácil aun, si instalas por ejemplo un Chrome, aquí se guardarán sus carpetas.

- /proc: 
    - Este directorio es algo especial, ya que contiene información de los procesos y aplicaciones que se están ejecutando en un determinado momento en el sistema, aunque en la practica no se guarda nada en él, ya que solamente almacena archivos virtuales y el contenido de esta carpeta es nulo. Aquí se almacenan todos los detalles del sistema Linux, como por ejemplo el kernel, procesos y parámetros de configuración. 
    - > Si se analiza esta carpeta realmente se puede aprender como es que los comandos Linux trabajan. Para poder examinar por completo este directorio tienes que estar logueado como root. Ojo que dentro de esta carpeta se encuentra el folder /sys en cual corresponde al kernel de Linux. Se pueden sobre escribir algunos archivos, pero podrías matar tu sistema si haces algo mal.

- /root: 
    - Es la carpeta de usuario exclusiva para el administrador root. No confundir con la raíz /.

- /srv: 
    - Contiene los ficheros de los servidores que pudiesen estar instalados como por ejemplo web, ftp, etc.

- /tmp: 
    - Archivos temporales de todo tipo.

- /var:
    -  directorio que almacena información variable como logs, cache, etc.

- /usr: 
    - User System Resources, almacena archivos de solo lectura, como los paquetes que instalamos mediante los gestores. Dentro de ella hay una réplica del árbol de directorios.
 
## Comandos Para manejarse dentro del terminal

```bash 
pwd
```
 >nos muestra nuestra ubicación actual en el árbol de directorios (Print Working Directory).

```bash
ls
```
>nos muestra el contenido de las carpetas de nuestro sistema operativo. Podemos especificar alguna ruta o, por defecto, listar el contenido de la carpeta donde estamos trabajando.

```bash
cd
``` 
>cambiar nuestra ubicación en el árbol de directorios (Change Directory).
>  - Usamos dos puntos (..) para referirnos al directorio padre y solo uno >>(.) para referirnos a nuestro directorio actual.

```bash
touch 
```
>nos ayuda a crear archivos desde la terminal.

```bash 
mkdir
``` 
>nos ayuda a crear carpetas desde la terminal.

```bash
cp: 
```
>nos permite duplicar archivos y carpetas.

```bash
mv
```
>cambiar el nombre de nuestros archivos y carpetas.