# Información del sistema
```bash
arch
```
 mostrar la arquitectura de la máquina (1).
```bash
uname -m
```
 mostrar la arquitectura de la máquina (2).
```bash
uname -r
```
 mostrar la versión del kernel usado.
```bash
dmidecode -q
```
 mostrar los componentes (hardware) del sistema.
```bash
hdparm -i /dev/hda
```
 mostrar las características de un disco duro.
```bash
hdparm -tT /dev/sda
```
 realizar prueba de lectura en un disco duro.
```bash
cat /proc/cpuinfo
```
 mostrar información de la CPU.
```bash
cat /proc/interrupts
```
 mostrar las interrupciones.
```bash
cat /proc/meminfo
```
 verificar el uso de memoria.
```bash
cat /proc/swaps
```
 mostrar ficheros swap.
```bash
cat /proc/version
```
 mostrar la versión del kernel.
```bash
cat /proc/net/dev
```
 mostrar adaptadores de red y estadísticas.
```bash
cat /proc/mounts
```
 mostrar el sistema de ficheros montado.
```bash
lspci -tv
```
 mostrar los dispositivos PCI.
```bash
lsusb -tv
```
 mostrar los dispositivos USB.
```bash
date
```
 mostrar la fecha del sistema.
```bash
cal 2011
```
 mostrar el almanaque de 2011.
```bash
cal 07 2011
```
 mostrar el almanaque para el mes julio de 2011.
```bash
date 041217002011.00
```
 colocar (declarar, ajustar) fecha y hora.
```bash
clock -w
```
 guardar los cambios de fecha en la BIOS.
# Apagar (Reiniciar Sistema o Cerrar Sesión)
```bash
shutdown -h now
```
 apagar el sistema (1).
```bash
init 0
```
 apagar el sistema (2).
```bash
telinit 0
```
 apagar el sistema (3).
```bash
halt
```
 apagar el sistema (4).
```bash
shutdown -h hours:minutes &
```
 apagado planificado del sistema.
```bash
shutdown -c
```
 cancelar un apagado planificado del sistema.
```bash
shutdown -r now
```
 reiniciar (1).
```bash
reboot
```
 reiniciar (2).
```bash
logout
```
 cerrar sesión.
# Archivos y Directorios
```bash
cd /home
```
 entrar en el directorio “home”.
```bash
cd ..
```
 retroceder un nivel.
```bash
cd ../..
```
 retroceder 2 niveles.
```bash
cd
```
 ir al directorio raíz.
```bash
cd ~user1
```
 ir al directorio user1.
```bash
cd –
```
 ir (regresar) al directorio anterior.
```bash
pwd
```
 mostrar el camino del directorio de trabajo.
```bash
ls
```
 ver los ficheros de un directorio.
```bash
ls -F
```
 ver los ficheros de un directorio.
```bash
ls -l
```
 mostrar los detalles de ficheros y carpetas de un directorio.
```bash
ls -a
```
 mostrar los ficheros ocultos.
```bash
ls *[0-9]*
```
 mostrar los ficheros y carpetas que contienen números.
```bash
tree
```
 mostrar los ficheros y carpetas en forma de árbol comenzando por la raíz.(1)
```bash
lstree
```
 mostrar los ficheros y carpetas en forma de árbol comenzando por la raíz.(2)
```bash
mkdir dir1
```
 crear una carpeta o directorio con nombre ‘dir1’.
```bash
mkdir dir1 dir2
```
 crear dos carpetas o directorios simultáneamente (Crear dos directorios a la vez).
```bash
mkdir -p /tmp/dir1/dir2
```
 crear un árbol de directorios.
```bash
rm -f file1
```
 borrar el fichero llamado ‘file1’.
```bash
rmdir dir1
```
 borrar la carpeta llamada ‘dir1’.
```bash
rm -rf dir1
```
 eliminar una carpeta llamada ‘dir1’ con su contenido de forma recursiva. (Si lo borro recursivo estoy diciendo que es con su contenido).
```bash
rm -rf dir1 dir2
```
 borrar dos carpetas (directorios) con su contenido de forma recursiva.
```bash
mv dir1 new_dir
```
 renombrar o mover un fichero o carpeta (directorio).
```bash
cp file1
```
 copiar un fichero.
```bash
cp file1 file2
```
 copiar dos ficheros al unísono.
```bash
cp dir /* .
```
 copiar todos los ficheros de un directorio dentro del directorio de trabajo actual.
```bash
cp -a /tmp/dir1 .
```
 copiar un directorio dentro del directorio actual de trabajo.
```bash
cp -a dir1
```
 copiar un directorio.
```bash
cp -a dir1 dir2
```
 copiar dos directorio al unísono.
```bash
ln -s file1 lnk1
```
 crear un enlace simbólico al fichero o directorio.
```bash
ln file1 lnk1
```
 crear un enlace físico al fichero o directorio.
```bash
touch -t 0712250000 file1
```
 modificar el tiempo real (tiempo de creación) de un fichero o directorio.
```bash
file file1
```
 salida (volcado en pantalla) del tipo mime de un fichero texto.
```bash
iconv -l
```
 listas de cifrados conocidos.
```bash
iconv -f fromEncoding -t toEncoding inputFile > outputFile
```
 crea una nueva forma del fichero de entrada asumiendo que está codificado en fromEncoding y convirtiéndolo a ToEncoding.
```bash
find . -maxdepth 1 -name *.jpg -print -exec convert ”{}” -resize 80×60 “thumbs/{}” \;
```
 agrupar ficheros redimensionados en el directorio actual y enviarlos a directorios en vistas de miniaturas (requiere convertir desde ImagemagicK).
# Encontrar archivos
```bash
find / -name file1
```
 buscar fichero y directorio a partir de la raíz del sistema.
```bash
find / -user user1
```
 buscar ficheros y directorios pertenecientes al usuario ‘user1’.
```bash
find /home/user1 -name \*.bin
```
 buscar ficheros con extensión ‘. bin’ dentro del directorio ‘/ home/user1’.
```bash
find /usr/bin -type f -atime +100
```
 buscar ficheros binarios no usados en los últimos 100 días.
```bash
find /usr/bin -type f -mtime -10
```
 buscar ficheros creados o cambiados dentro de los últimos 10 días.
```bash
find / -name \*.rpm -exec chmod 755 ‘{}’ \;
```
 buscar ficheros con extensión ‘.rpm’ y modificar permisos.
```bash
find / -xdev -name \*.rpm
```
 Buscar ficheros con extensión ‘.rpm’ ignorando los dispositivos removibles como cdrom, pen-drive, etc.…
```bash
locate \*.ps
```
 encuentra ficheros con extensión ‘.ps’ ejecutados primeramente con el command ‘updatedb’.
```bash
whereis halt
```
 mostrar la ubicación de un fichero binario, de ayuda o fuente. En este caso pregunta dónde está el comando ‘halt’.
```bash
which halt
```
 mostrar la senda completa (el camino completo) a un binario / ejecutable.
# Montando un sistema de ficheros
```bash
mount /dev/hda2 /mnt/hda2
```
 montar un disco llamado hda2. Verifique primero la existencia del directorio ‘/ mnt/hda2’; si no está, debe crearlo.
```bash
umount /dev/hda2
```
 desmontar un disco llamado hda2. Salir primero desde el punto ‘/ mnt/hda2.
```bash
fuser -km /mnt/hda2
```
 forzar el desmontaje cuando el dispositivo está ocupado.
```bash
umount -n /mnt/hda2
```
 correr el desmontaje sin leer el fichero /etc/mtab. Útil cuando el fichero es de solo lectura o el disco duro está lleno.
```bash
mount /dev/fd0 /mnt/floppy
```
 montar un disco flexible (floppy).
```bash
mount /dev/cdrom /mnt/cdrom
```
 montar un cdrom / dvdrom.
```bash
mount /dev/hdc /mnt/cdrecorder
```
 montar un cd regrabable o un dvdrom.
```bash
mount /dev/hdb /mnt/cdrecorder
```
 montar un cd regrabable / dvdrom (un dvd).
```bash
mount -o loop file.iso /mnt/cdrom
```
 montar un fichero o una imagen iso.
```bash
mount -t vfat /dev/hda5 /mnt/hda5
```
 montar un sistema de ficheros FAT32.
```bash
mount /dev/sda1 /mnt/usbdisk
```
 montar un usb pen-drive o una memoria (sin especificar el tipo de sistema de ficheros).

```bash
# ARTÍCULO RELACIONADO
```

4 comandos para conocer datos de nuestros HDD o particiones
# Espacio de Disco
```bash
df -h
```
 mostrar una lista de las particiones montadas.
```bash
ls -lSr |more
```
 mostrar el tamaño de los ficheros y directorios ordenados por tamaño.
```bash
du -sh dir1
```
 Estimar el espacio usado por el directorio ‘dir1’.
```bash
du -sk * | sort -rn
```
 mostrar el tamaño de los ficheros y directorios ordenados por tamaño.
```bash
rpm -q -a –qf ‘%10{SIZE}t%{NAME}n’ | sort -k1,1n
```
 mostrar el espacio usado por los paquetes rpm instalados organizados por tamaño (Fedora, Redhat y otros).
```bash
dpkg-query -W -f=’${Installed-Size;10}t${Package}n’ | sort -k1,1n
```
 mostrar el espacio usado por los paquetes instalados, organizados por tamaño (Ubuntu, Debian y otros).
# Usuarios y Grupos
```bash
groupadd nombre_del_grupo
```
 crear un nuevo grupo.
```bash
groupdel nombre_del_grupo
```
 borrar un grupo.
```bash
groupmod -n nuevo_nombre_del_grupo viejo_nombre_del_grupo
```
 renombrar un grupo.
```bash
useradd -c “Name Surname ” -g admin -d /home/user1 -s /bin/bash user1
```
 Crear un nuevo usuario perteneciente al grupo “admin”.
```bash
useradd user1
```
 crear un nuevo usuario.
```bash
userdel -r user1
```
 borrar un usuario (‘-r’ elimina el directorio Home).
```bash
usermod -c “User FTP” -g system -d /ftp/user1 -s /bin/nologin user1
```
 cambiar los atributos del usuario.
```bash
passwd
```
 cambiar contraseña.
```bash
passwd user1
```
 cambiar la contraseña de un usuario (solamente por root).
```bash
chage -E 2011-12-31 user1
```
 colocar un plazo para la contraseña del usuario. En este caso dice que la clave expira el 31 de diciembre de 2011.
```bash
pwck
```
 chequear la sintaxis correcta el formato de fichero de ‘/etc/passwd’ y la existencia de usuarios.
```bash
grpck
```
 chequear la sintaxis correcta y el formato del fichero ‘/etc/group’ y la existencia de grupos.
```bash
newgrp group_name
```
 registra a un nuevo grupo para cambiar el grupo predeterminado de los ficheros creados recientemente.
# Permisos en Ficheros (Usa ”+” para colocar permisos y ”-” para eliminar)
```bash
ls -lh
```
 Mostrar permisos.
```bash
ls /tmp | pr -T5 -W$COLUMNS
```
 dividir la terminal en 5 columnas.
```bash
chmod ugo+rwx directory1
```
 colocar permisos de lectura ®, escritura (w) y ejecución(x) al propietario (u), al grupo (g) y a otros (o) sobre el directorio ‘directory1’.
```bash
chmod go-rwx directory1
```
 quitar permiso de lectura ®, escritura (w) y (x) ejecución al grupo (g) y otros (o) sobre el directorio ‘directory1’.
```bash
chown user1 file1
```
 cambiar el dueño de un fichero.
```bash
chown -R user1 directory1
```
 cambiar el propietario de un directorio y de todos los ficheros y directorios contenidos dentro.
```bash
chgrp group1 file1
```
 cambiar grupo de ficheros.
```bash
chown user1:group1 file1
```
 cambiar usuario y el grupo propietario de un fichero.
```bash
find / -perm -u+s
```
 visualizar todos los ficheros del sistema con SUID configurado.
```bash
chmod u+s /bin/file1
```
 colocar el bit SUID en un fichero binario. El usuario que corriendo ese fichero adquiere los mismos privilegios como dueño.
```bash
chmod u-s /bin/file1
```
 deshabilitar el bit SUID en un fichero binario.
```bash
chmod g+s /home/public
```
 colocar un bit SGID en un directorio –similar al SUID pero por directorio.
```bash
chmod g-s /home/public
```
 desabilitar un bit SGID en un directorio.
```bash
chmod o+t /home/public
```
 colocar un bit STIKY en un directorio. Permite el borrado de ficheros solamente a los dueños legítimos.
```bash
chmod o-t /home/public
```
 desabilitar un bit STIKY en un directorio.
# Atributos especiales en ficheros (Usa ”+” para colocar permisos y ”-” para eliminar)
```bash
chattr +a file1
```
 permite escribir abriendo un fichero solamente modo append.
```bash
chattr +c file1
```
 permite que un fichero sea comprimido / descomprimido automaticamente.
```bash
chattr +d file1
```
 asegura que el programa ignore borrar los ficheros durante la copia de seguridad.
```bash
chattr +i file1
```
 convierte el fichero en invariable, por lo que no puede ser eliminado, alterado, renombrado, ni enlazado.
```bash
chattr +s file1
```
 permite que un fichero sea borrado de forma segura.
```bash
chattr +S file1
```
 asegura que un fichero sea modificado, los cambios son escritos en modo synchronous como con sync.
```bash
chattr +u file1
```
 te permite recuperar el contenido de un fichero aún si este está cancelado.
```bash
lsattr
```
 mostrar atributos especiales.

```bash
# ARTÍCULO RELACIONADO
```

```bash
# Con el terminal
```
 Comandos de tamaño y espacio
# Archivos y Ficheros comprimidos
```bash
bunzip2 file1.bz2
```
 descomprime in fichero llamado ‘file1.bz2’.
```bash
bzip2 file1
```
 comprime un fichero llamado ‘file1’.
```bash
gunzip file1.gz
```
 descomprime un fichero llamado ‘file1.gz’.
```bash
gzip file1
```
 comprime un fichero llamado ‘file1’.
```bash
gzip -9 file1
```
 comprime con compresión máxima.
```bash
rar a file1.rar test_file
```
 crear un fichero rar llamado ‘file1.rar’.
```bash
rar a file1.rar file1 file2 dir1
```
 comprimir ‘file1’, ‘file2’ y ‘dir1’ simultáneamente.
```bash
rar x file1.rar
```
 descomprimir archivo rar.
```bash
unrar x file1.rar
```
 descomprimir archivo rar.
```bash
tar -cvf archive.tar file1
```
 crear un tarball descomprimido.
```bash
tar -cvf archive.tar file1 file2 dir1
```
 crear un archivo conteniendo ‘file1’, ‘file2′ y’dir1’.
```bash
tar -tf archive.tar
```
 mostrar los contenidos de un archivo.
```bash
tar -xvf archive.tar
```
 extraer un tarball.
```bash
tar -xvf archive.tar -C /tmp
```
 extraer un tarball en / tmp.
```bash
tar -cvfj archive.tar.bz2 dir1
```
 crear un tarball comprimido dentro de bzip2.
```bash
tar -xvfj archive.tar.bz2
```
 descomprimir un archivo tar comprimido en bzip2
```bash
tar -cvfz archive.tar.gz dir1
```
 crear un tarball comprimido en gzip.
```bash
tar -xvfz archive.tar.gz
```
 descomprimir un archive tar comprimido en gzip.
```bash
zip file1.zip file1
```
 crear un archivo comprimido en zip.
```bash
zip -r file1.zip file1 file2 dir1
```
 comprimir, en zip, varios archivos y directorios de forma simultánea.
```bash
unzip file1.zip
```
 descomprimir un archivo zip.
# Paquetes RPM (Red Hat, Fedora y similares)
```bash
rpm -ivh package.rpm
```
 instalar un paquete rpm.
```bash
rpm -ivh –nodeeps package.rpm
```
 instalar un paquete rpm ignorando las peticiones de dependencias.
```bash
rpm -U package.rpm
```
 actualizar un paquete rpm sin cambiar la configuración de los ficheros.
```bash
rpm -F package.rpm
```
 actualizar un paquete rpm solamente si este está instalado.
```bash
rpm -e package_name.rpm
```
 eliminar un paquete rpm.
```bash
rpm -qa
```
 mostrar todos los paquetes rpm instalados en el sistema.
```bash
rpm -qa | grep httpd
```
 mostrar todos los paquetes rpm con el nombre “httpd”.
```bash
rpm -qi package_name
```
 obtener información en un paquete específico instalado.
```bash
rpm -qg “System Environment/Daemons”
```
 mostar los paquetes rpm de un grupo software.
```bash
rpm -ql package_name
```
 mostrar lista de ficheros dados por un paquete rpm instalado.
```bash
rpm -qc package_name
```
 mostrar lista de configuración de ficheros dados por un paquete rpm instalado.
```bash
rpm -q package_name –whatrequires
```
 mostrar lista de dependencias solicitada para un paquete rpm.
```bash
rpm -q package_name –whatprovides
```
 mostar la capacidad dada por un paquete rpm.
```bash
rpm -q package_name –scripts
```
 mostrar los scripts comenzados durante la instalación /eliminación.
```bash
rpm -q package_name –changelog
```
 mostar el historial de revisions de un paquete rpm.
```bash
rpm -qf /etc/httpd/conf/httpd.conf
```
 verificar cuál paquete rpm pertenece a un fichero dado.
```bash
rpm -qp package.rpm -l
```
 mostrar lista de ficheros dados por un paquete rpm que aún no ha sido instalado.
```bash
rpm –import /media/cdrom/RPM-GPG-KEY
```
 importar la firma digital de la llave pública.
```bash
rpm –checksig package.rpm
```
 verificar la integridad de un paquete rpm.
```bash
rpm -qa gpg-pubkey
```
 verificar la integridad de todos los paquetes rpm instalados.
```bash
rpm -V package_name
```
 chequear el tamaño del fichero, licencias, tipos, dueño, grupo, chequeo de resumen de MD5 y última modificación.
```bash
rpm -Va
```
 chequear todos los paquetes rpm instalados en el sistema. Usar con cuidado.
```bash
rpm -Vp package.rpm
```
 verificar un paquete rpm no instalado todavía.
```bash
rpm2cpio package.rpm | cpio –extract –make-directories *bin*
```
 extraer fichero ejecutable desde un paquete rpm.
```bash
rpm -ivh /usr/src/redhat/RPMS/`arch`/package.rpm
```
 instalar un paquete construido desde una fuente rpm.
```bash
rpmbuild –rebuild package_name.src.rpm
```
 construir un paquete rpm desde una fuente rpm.
# Actualizador de paquetes YUM (Red Hat, Fedora y similares)
```bash
yum install package_name
```
 descargar e instalar un paquete rpm.
```bash
yum localinstall package_name.rpm
```
 este instalará un RPM y tratará de resolver todas las dependencies para ti, usando tus repositorios.
```bash
yum update package_name.rpm
```
 actualizar todos los paquetes rpm instalados en el sistema.
```bash
yum update package_name
```
 modernizar / actualizar un paquete rpm.
```bash
yum remove package_name
```
 eliminar un paquete rpm.
```bash
yum list
```
 listar todos los paquetes instalados en el sistema.
```bash
yum search package_name
```
 Encontrar un paquete en repositorio rpm.
```bash
yum clean packages
```
 limpiar un caché rpm borrando los paquetes descargados.
```bash
yum clean headers
```
 eliminar todos los ficheros de encabezamiento que el sistema usa para resolver la dependencia.
```bash
yum clean all
```
 eliminar desde los paquetes caché y ficheros de encabezado.
# Paquetes Deb (Debian, Ubuntu y derivados)
```bash
dpkg -i package.deb
```
 instalar / actualizar un paquete deb.
```bash
dpkg -r package_name
```
 eliminar un paquete deb del sistema.
```bash
dpkg -l
```
 mostrar todos los paquetes deb instalados en el sistema.
```bash
dpkg -l | grep httpd
```
 mostrar todos los paquetes deb con el nombre “httpd”
```bash
dpkg -s package_name
```
 obtener información en un paquete específico instalado en el sistema.
```bash
dpkg -L package_name
```
 mostar lista de ficheros dados por un paquete instalado en el sistema.
```bash
dpkg –contents package.deb
```
 mostrar lista de ficheros dados por un paquete no instalado todavía.
```bash
dpkg -S /bin/ping
```
 verificar cuál paquete pertenece a un fichero dado.
# Actualizador de paquetes APT (Debian, Ubuntu y derivados)
```bash
apt-get install package_name
```
 instalar / actualizar un paquete deb.
```bash
apt-cdrom install package_name
```
 instalar / actualizar un paquete deb desde un cdrom.
```bash
apt-get update
```
 actualizar la lista de paquetes.
```bash
apt-get upgrade
```
 actualizar todos los paquetes instalados.
```bash
apt-get remove package_name
```
 eliminar un paquete deb del sistema.
```bash
apt-get check
```
 verificar la correcta resolución de las dependencias.
```bash
apt-get clean
```
 limpiar cache desde los paquetes descargados.
```bash
apt-cache search searched-package
```
 retorna lista de paquetes que corresponde a la serie «paquetes buscados».
# Ver el contenido de un fichero
```bash
cat file1
```
 ver los contenidos de un fichero comenzando desde la primera hilera.
```bash
tac file1
```
 ver los contenidos de un fichero comenzando desde la última línea.
```bash
more file1
```
 ver el contenido a lo largo de un fichero.
```bash
less file1
```
 parecido al commando ‘more’ pero permite salvar el movimiento en el fichero así como el movimiento hacia atrás.
```bash
head -2 file1
```
 ver las dos primeras líneas de un fichero.
```bash
tail -2 file1
```
 ver las dos últimas líneas de un fichero.
```bash
tail -f /var/log/messages
```
 ver en tiempo real qué ha sido añadido al fichero.
# Manipulación de texto
```bash
cat file1 file2 .. | command <> file1_in.txt_or_file1_out.txt
```
 sintaxis general para la manipulación de texto utilizando PIPE, STDIN y STDOUT.
```bash
cat file1 | command( sed, grep, awk, grep, etc…) > result.txt
```
 sintaxis general para manipular un texto de un fichero y escribir el resultado en un fichero nuevo.
```bash
cat file1 | command( sed, grep, awk, grep, etc…) » result.txt
```
 sintaxis general para manipular un texto de un fichero y añadir resultado en un fichero existente.
```bash
grep Aug /var/log/messages
```
 buscar palabras “Aug” en el fichero ‘/var/log/messages’.
```bash
grep ^Aug /var/log/messages
```
 buscar palabras que comienzan con “Aug” en fichero ‘/var/log/messages’
```bash
grep [0-9] /var/log/messages
```
 seleccionar todas las líneas del fichero ‘/var/log/messages’ que contienen números.
```bash
grep Aug -R /var/log/*
```
 buscar la cadena “Aug” en el directorio ‘/var/log’ y debajo.
```bash
sed ‘s/stringa1/stringa2/g’ example.txt
```
 reubicar “string1” con “string2” en ejemplo.txt
```bash
sed ‘/^$/d’ example.txt
```
 eliminar todas las líneas en blanco desde el ejemplo.txt
```bash
sed ‘/ *#/d; /^$/d’ example.txt
```
 eliminar comentarios y líneas en blanco de ejemplo.txt
```bash
echo ‘esempio’ | tr ‘[:lower:]’ ‘[:upper:]’
```
 convertir minúsculas en mayúsculas.
```bash
sed -e ‘1d’ result.txt
```
 elimina la primera línea del fichero ejemplo.txt
```bash
sed -n ‘/stringa1/p’
```
 visualizar solamente las líneas que contienen la palabra “string1”.
# Establecer caracter y conversión de ficheros
```bash
dos2unix filedos.txt fileunix.txt
```
 convertir un formato de fichero texto desde MSDOS a UNIX.
```bash
unix2dos fileunix.txt filedos.txt
```
 convertir un formato de fichero de texto desde UNIX a MSDOS.
```bash
recode ..HTML < page.txt > page.html
```
 convertir un fichero de texto en html.
```bash
recode -l | more
```
 mostrar todas las conversiones de formato disponibles.
# Análisis del sistema de ficheros
```bash
badblocks -v /dev/hda1
```
 Chequear los bloques defectuosos en el disco hda1.
```bash
fsck /dev/hda1
```
 reparar / chequear la integridad del fichero del sistema Linux en el disco hda1.
```bash
fsck.ext2 /dev/hda1
```
 reparar / chequear la integridad del fichero del sistema ext 2 en el disco hda1.
```bash
e2fsck /dev/hda1
```
 reparar / chequear la integridad del fichero del sistema ext 2 en el disco hda1.
```bash
e2fsck -j /dev/hda1
```
 reparar / chequear la integridad del fichero del sistema ext 3 en el disco hda1.
```bash
fsck.ext3 /dev/hda1
```
 reparar / chequear la integridad del fichero del sistema ext 3 en el disco hda1.
```bash
fsck.vfat /dev/hda1
```
 reparar / chequear la integridad del fichero sistema fat en el disco hda1.
```bash
fsck.msdos /dev/hda1
```
 reparar / chequear la integridad de un fichero del sistema dos en el disco hda1.
```bash
dosfsck /dev/hda1
```
 reparar / chequear la integridad de un fichero del sistema dos en el disco hda1.
# Formatear un sistema de ficheros
```bash
mkfs /dev/hda1
```
 crear un fichero de sistema tipo Linux en la partición hda1.
```bash
mke2fs /dev/hda1
```
 crear un fichero de sistema tipo Linux ext 2 en hda1.
```bash
mke2fs -j /dev/hda1
```
 crear un fichero de sistema tipo Linux ext3 (periódico) en la partición hda1.
```bash
mkfs -t vfat 32 -F /dev/hda1
```
 crear un fichero de sistema FAT32 en hda1.
```bash
fdformat -n /dev/fd0
```
 formatear un disco flooply.
```bash
mkswap /dev/hda3
```
 crear un fichero de sistema swap.
# Trabajo con la SWAP
```bash
mkswap /dev/hda3
```
 crear fichero de sistema swap.
```bash
swapon /dev/hda3
```
 activando una nueva partición swap.
```bash
swapon /dev/hda2 /dev/hdb3
```
 activar dos particiones swap.
# Salvas (Backup)
```bash
dump -0aj -f /tmp/home0.bak /home
```
 hacer una salva completa del directorio ‘/home’.
```bash
dump -1aj -f /tmp/home0.bak /home
```
 hacer una salva incremental del directorio ‘/home’.
```bash
restore -if /tmp/home0.bak
```
 restaurando una salva interactivamente.
```bash
rsync -rogpav –delete /home /tmp
```
 sincronización entre directorios.
```bash
rsync -rogpav -e ssh –delete /home ip_address:/tmp
```
 rsync a través del túnel SSH.
```bash
rsync -az -e ssh –delete ip_addr:/home/public /home/local
```
 sincronizar un directorio local con un directorio remoto a través de ssh y de compresión.
```bash
rsync -az -e ssh –delete /home/local ip_addr:/home/public
```
 sincronizar un directorio remoto con un directorio local a través de ssh y de compresión.
```bash
dd bs=1M if=/dev/hda | gzip | ssh user@ip_addr ‘dd of=hda.gz’
```
 hacer una salva de un disco duro en un host remoto a través de ssh.
```bash
dd if=/dev/sda of=/tmp/file1
```
 salvar el contenido de un disco duro a un fichero. (En este caso el disco duro es “sda” y el fichero “file1”).
```bash
tar -Puf backup.tar /home/user
```
 hacer una salva incremental del directorio ‘/home/user’.
```bash
( cd /tmp/local/ && tar c . ) | ssh -C user@ip_addr ‘cd /home/share/ && tar x -p’
```
 copiar el contenido de un directorio en un directorio remoto a través de ssh.
```bash
( tar c /home ) | ssh -C user@ip_addr ‘cd /home/backup-home && tar x -p’
```
 copiar un directorio local en un directorio remoto a través de ssh.
```bash
tar cf – . | (cd /tmp/backup ; tar xf – )
```
 copia local conservando las licencias y enlaces desde un directorio a otro.
```bash
find /home/user1 -name ‘*.txt’ | xargs cp -av –target-directory=/home/backup/ –parents
```
 encontrar y copiar todos los ficheros con extensión ‘.txt’ de un directorio a otro.
```bash
find /var/log -name ‘*.log’ | tar cv –files-from=- | bzip2 > log.tar.bz2
```
 encontrar todos los ficheros con extensión ‘.log’ y hacer un archivo bzip.
```bash
dd if=/dev/hda of=/dev/fd0 bs=512 count=1
```
 hacer una copia del MRB (Master Boot Record) a un disco floppy.
```bash
dd if=/dev/fd0 of=/dev/hda bs=512 count=1
```
 restaurar la copia del MBR (Master Boot Record) salvada en un floppy.
# CD-ROM
```bash
cdrecord -v gracetime=2 dev=/dev/cdrom -eject blank=fast -force
```
 limpiar o borrar un cd regrabable.
```bash
mkisofs /dev/cdrom > cd.iso
```
 crear una imagen iso de cdrom en disco.
```bash
mkisofs /dev/cdrom | gzip > cd_iso.gz
```
 crear una imagen comprimida iso de cdrom en disco.
```bash
mkisofs -J -allow-leading-dots -R -V “Label CD” -iso-level 4 -o ./cd.iso data_cd
```
 crear una imagen iso de un directorio.
```bash
cdrecord -v dev=/dev/cdrom cd.iso
```
 quemar una imagen iso.
```bash
gzip -dc cd_iso.gz | cdrecord dev=/dev/cdrom –
```
 quemar una imagen iso comprimida.
```bash
mount -o loop cd.iso /mnt/iso
```
 montar una imagen iso.
```bash
cd-paranoia -B
```
 llevar canciones de un cd a ficheros wav.
```bash
cd-paranoia – ”-3”
```
 llevar las 3 primeras canciones de un cd a ficheros wav.
```bash
cdrecord –scanbus
```
 escanear bus para identificar el canal scsi.
```bash
dd if=/dev/hdc | md5sum
```
 hacer funcionar un md5sum en un dispositivo, como un CD.
# Trabajo con la RED ( LAN y Wi-Fi)
```bash
ifconfig eth0
```
 mostrar la configuración de una tarjeta de red Ethernet.
```bash
ifup eth0
```
 activar una interface ‘eth0’.
```bash
ifdown eth0
```
 deshabilitar una interface ‘eth0’.
```bash
ifconfig eth0 192.168.1.1 netmask 255.255.255.0
```
 configurar una dirección IP.
```bash
ifconfig eth0 promisc
```
 configurar ‘eth0’en modo común para obtener los paquetes (sniffing).
```bash
dhclient eth0
```
 activar la interface ‘eth0’ en modo dhcp.
```bash
route -n
```
 mostrar mesa de recorrido.
```bash
route add -net 0/0 gw IP_Gateway
```
 configurar entrada predeterminada.
```bash
route add -net 192.168.0.0 netmask 255.255.0.0 gw 192.168.1.1
```
 configurar ruta estática para buscar la red ‘192.168.0.0/16’.
```bash
route del 0/0 gw IP_gateway
```
 eliminar la ruta estática.
```bash
echo “1” > /proc/sys/net/ipv4/ip_forward
```
 activar el recorrido ip.
```bash
hostname
```
 mostrar el nombre del host del sistema.
```bash
host www.example.com
```
 buscar el nombre del host para resolver el nombre a una dirección ip(1).
```bash
nslookup www.example.com
```
 buscar el nombre del host para resolver el nombre a una direccióm ip y viceversa(2).
```bash
ip link show
```
 mostar el estado de enlace de todas las interfaces.
```bash
mii-tool eth0
```
 mostar el estado de enlace de ‘eth0’.
```bash
ethtool eth0
```
 mostrar las estadísticas de tarjeta de red ‘eth0’.
```bash
netstat -tup
```
 mostrar todas las conexiones de red activas y sus PID.
```bash
netstat -tupl
```
 mostrar todos los servicios de escucha de red en el sistema y sus PID.
```bash
tcpdump tcp port 80
```
 mostrar todo el tráfico HTTP.
```bash
iwlist scan
```
 mostrar las redes inalámbricas.
```bash
iwconfig eth1
```
 mostrar la configuración de una tarjeta de red inalámbrica.
```bash
whois www.example.com
```
 buscar en base de datos Whois.
# Redes de Microsoft Windows (SAMBA)
```bash
nbtscan ip_addr
```
 resolución de nombre de red bios.
```bash
nmblookup -A ip_addr
```
 resolución de nombre de red bios.
```bash
smbclient -L ip_addr/hostname
```
 mostrar acciones remotas de un host en windows.
# Tablas IP (CORTAFUEGOS)
```bash
iptables -t filter -L
```
 mostrar todas las cadenas de la tabla de filtro.
```bash
iptables -t nat -L
```
 mostrar todas las cadenas de la tabla nat.
```bash
iptables -t filter -F
```
 limpiar todas las reglas de la tabla de filtro.
```bash
iptables -t nat -F
```
 limpiar todas las reglas de la tabla nat.
```bash
iptables -t filter -X
```
 borrar cualquier cadena creada por el usuario.
```bash
iptables -t filter -A INPUT -p tcp –dport telnet -j ACCEPT
```
 permitir las conexiones telnet para entar.
```bash
iptables -t filter -A OUTPUT -p tcp –dport http -j DROP
```
 bloquear las conexiones HTTP para salir.
```bash
iptables -t filter -A FORWARD -p tcp –dport pop3 -j ACCEPT
```
 permitir las conexiones POP a una cadena delantera.
```bash
iptables -t filter -A INPUT -j LOG –log-prefix “DROP INPUT”
```
 registrando una cadena de entrada.
```bash
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```
 configurar un PAT (Puerto de traducción de dirección) en eth0, ocultando los paquetes de salida forzada.
```bash
iptables -t nat -A PREROUTING -d 192.168.0.1 -p tcp -m tcp –dport 22 -j DNAT –to-destination 10.0.0.2:22
```
 redireccionar los paquetes diriguidos de un host a otro.
# Monitoreando y depurando
```bash
top
```
 mostrar las tareas de linux usando la mayoría cpu.
```bash
ps -eafw
```
 muestra las tareas Linux.
```bash
ps -e -o pid,args –forest
```
 muestra las tareas Linux en un modo jerárquico.
```bash
pstree
```
 mostrar un árbol sistema de procesos.
```bash
kill -9 ID_Processo
```
 forzar el cierre de un proceso y terminarlo.
```bash
kill -1 ID_Processo
```
 forzar un proceso para recargar la configuración.
```bash
lsof -p $$
```
 mostrar una lista de ficheros abiertos por procesos.
```bash
lsof /home/user1
```
 muestra una lista de ficheros abiertos en un camino dado del sistema.
```bash
strace -c ls >/dev/null
```
 mostrar las llamadas del sistema hechas y recibidas por un proceso.
```bash
strace -f -e open ls >/dev/null
```
 mostrar las llamadas a la biblioteca.
```bash
watch -n1 ‘cat /proc/interrupts’
```
 mostrar interrupciones en tiempo real.
```bash
last reboot
```
 mostrar historial de reinicio.
```bash
lsmod
```
 mostrar el kernel cargado.
```bash
free -m
```
 muestra el estado de la RAM en megabytes.
```bash
smartctl -A /dev/hda
```
 monitorear la fiabilidad de un disco duro a través de SMART.
```bash
smartctl -i /dev/hda
```
 chequear si SMART está activado en un disco duro.
```bash
tail /var/log/dmesg
```
 mostrar eventos inherentes al proceso de carga del kernel.
```bash
tail /var/log/messages
```
 mostrar los eventos del sistema.
# Otros comandos útiles
```bash
apropos …keyword
```
 mostrar una lista de comandos que pertenecen a las palabras claves de un programa; son útiles cuando tú sabes qué hace tu programa, pero de sconoces el nombre del comando.
```bash
man ping
```
 mostrar las páginas del manual on-line; por ejemplo, en un comando ping, usar la opción ‘-k’ para encontrar cualquier comando relacionado.
```bash
whatis …keyword
```
 muestra la descripción de lo que hace el programa.
```bash
mkbootdisk –device /dev/fd0 `uname -r`
```
 crear un floppy boteable.
```bash
gpg -c file1
```
 codificar un fichero con guardia de seguridad GNU.
```bash
gpg file1.gpg
```
 decodificar un fichero con Guardia de seguridad GNU.
```bash
wget -r www.example.com
```
 descargar un sitio web completo.
```bash
wget -c www.example.com/file.iso
```
 descargar un fichero con la posibilidad de parar la descargar y reanudar más tarde.
```bash
echo ‘wget -c www.example.com/files.iso‘ | at 09:00
```
 Comenzar una descarga a cualquier hora. En este caso empezaría a las 9 horas.
```bash
ldd /usr/bin/ssh
```
 mostrar las bibliotecas compartidas requeridas por el programa ssh.
```bash
alias hh=’history’
```
 colocar un alias para un commando –hh= Historial.
```bash
chsh
```
 cambiar el comando Shell.
```bash
chsh –list-shells
```
 es un comando adecuado para saber si tienes que hacer remoto en otra terminal.
```bash
who -a
```
 mostrar quien está registrado, e imprimir hora del último sistema de importación, procesos muertos, procesos de registro de sistema, procesos activos producidos por init, funcionamiento actual y últimos cambios del reloj del sistema.