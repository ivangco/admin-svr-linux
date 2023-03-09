# Nagios: Desempaquetado, descompresión, compilación e instalación de paquetes


No todo el software que necesitamos se encuentra en los repositorios. Debido a esto, algunas veces debemos descargar el software, realizar un proceso de descompresión y desempaquetado para finalmente instalar la herramienta.

Instalación de algunas herramientas para manejar una base de datos MySQL (recuerda que instalaremos y trabaremos con MySQL en una próxima clase):

```
sudo apt install build-essential libgd-dev openssl libssl-dev unzip apache2 php gcc libdbi-perl libdbd-mysql-perl
```
Instalación de Nagios:

```bash
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.4.tar.gz -O nagioscore.tar.gz
```
Descomprimir y desempaquetar archivos con tar:

```bash
tar xvzf nagioscore.tar.gz
```
Este comando creará una carpeta nagios-4.4.4. El nombre de la carpeta puede variar dependiendo de la versión que descargaste. Entrando a esta carpeta podemos ejecutar diferentes archivos y comandos para configurar el software y realizar la instalación.
```bash
# 1:
sudo ./configure --with-https-conf=/etc/apache2/sites-enabled
# 2:
sudo make all
# 3:
sudo make install
# 4:
sudo make install-init
# 5:
sudo make install-commandmode
# 6:
sudo make install-config
#7:
sudo make install-webconf
```

Por último, para administrar el servicio de nagios podemos usar el comando

```bash 
sudo systemctl (status, start, restart, reload, stop, enable, disable, list-dependencies) nagios
```
Lecturas recomendadas


https://www.nagios.org


https://nagios-plugins.org/download/nagios-plugins-2.2.1.tar.gz

https://nagios-plugins.org/download/nagios-plugins-2.2.1.tar.gz


https://assets.nagios.com/redirects/redirect.php?url=https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.7.tar.gz%20-O%20nagioscore.tar.gz

https://assets.nagios.com/redirects/redirect.php?url=https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.7.tar.gz%20-O%20nagioscore.tar.gz