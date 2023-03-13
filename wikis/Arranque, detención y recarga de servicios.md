# Arranque, detención y recarga de servicios

El comando systemctl nos permite manejar los procesos de nuestro sistema operativo. Nuestros servicios pueden estar activos (es decir, encendidos) o inactivos (apagados). También podemos configurar si están habilitados o deshabilitados para correr automáticamente con el arranque del sistema.

sudo systemctl status nombre-servicio: ver el estado de nuestros servicios.
sudo systemctl (enable, disable) nombre-servicio: activar o desactivar el arranque automático de nuestros servicios.
sudo systemctl (start, stop, restart) nombre-servicio: encender, apagar o reiniciar los servicios.
sudo systemctl list-units -t service --all: ver todos los servicios del sistema.
El comando journalctl nos permite ver los logs de los procesos de nuestro sistema operativo. Recuerda que todos ellos están almacenados en la carpeta /var/log/.

sudo journalctl -fu nombre-servicio: ver los logs de nuestros servicios y hacer un seguimiento.
sudo journalctl --disk-usage: ver la cantidad de espacio que ocupan nuestros logs.
sudo journalctl --list-boots: muestra la lista de booteos de la computadora.
sudo journalctl -p (critic, info, warning, error): filtrar los logs por el tipo de mensaje.
sudo journalctl -o json: ver los logs en formato JSON.