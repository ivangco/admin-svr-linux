# Configuración de Node.js en un ambiente productivo

Descarga del repositorio con el proyecto de Node.js:
```
git clone https://github.com/edisoncast/linux-platzi
```

Instalación de Node.js:
```
sudo apt install nodejs npm
```
Descarga e instalación de la versión 10 de Node.js:
```
curl -sL https://deb.nodesource.com/setup_10.x -o node_setup.sh
```
```
sudo bash node_setup.sh
```
```
sudo apt-get install gcc g++ make
```
```
sudo apt-get install -y nodejs
```
Creación de un usuario para manejar los procesos de Node.js:
```
sudo adduser nodejs
```
Creación del script /lib/systemd/system/platzi@.service para que el servicio de Node.js arranque con el sistema operativo:
```
[Unit]
Description=Balanceo de carga para Platzi
Documentation=https://github.com/edisoncast/linux-platzi
After=network.target

[Service]
Environment=PORT=%i
Type=simple
User=nodejs
WorkingDirectory=/home/nodejs/linux-platzi
ExecStart=/usr/bin/node /home/nodejs/linux-platzi/server.js
Restart-on=failure

[Install]
WantedBy=multi-user.target
```