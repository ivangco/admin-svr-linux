# Entendiendo la gestión de vulnerabilidades

Al construir aplicaciones debemos enfrentarnos a la comodidad de los usuarios al crear sus contraseñas y la seguridad que necesitamos para que los atacantes informáticos no consigan acceso a nuestra información.

Existen algunos comandos que no debemos utilizar, ya que son vulnerables por defecto, así como telnet o comandos r*. En vez de estos comandos podemos usar protocolos seguros como SSH.

Debemos tener presente cuáles son los servicios y puertos abiertos de nuestro sistema operativo. También debemos ser muy cuidadosos con los permisos de los usuarios.

Para verificar las actualizaciones de seguridad e instalarlas en nuestra máquina podemos usar los siguientes comandos:
```bash 
# CentOS
yum check-update --security
yum update security

# Ubuntu
apt-get update
apt-get upgrade
```
Recuerda que la seguridad informática no es un producto, sino un proceso constante.