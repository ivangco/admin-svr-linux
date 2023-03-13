# Monitoreo de MySQL con Nagios

Instalación de MySQL:
```
sudo apt install mysql-server
```

Conexión a una base de datos MySQL:

mysql -u nombre-usuario -p
Escribe tu contraseña en una nueva línea, de otra forma quedará guardada en tu historial de comandos. En caso de que el host de la base de datos se encuentre en alguna otra máquina debes especificarlo con -h ip-host.

Recuerda que puedes encontrar la información de tu base de datos (incluyendo la contraseña) en el archivo /etc/mysql/debian.cnf.