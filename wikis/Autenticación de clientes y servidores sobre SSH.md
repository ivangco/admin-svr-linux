# Autenticación de clientes y servidores sobre SSH


SSH es un protocolo que nos ayuda a conectarnos a nuestros servidores desde nuestras máquinas para administrarlos de forma remota. No es muy recomendado usar otros protocolos como Telnet, ya que son inseguros y están deprecados.

Con el comando ssh-keygen podemos generar llaves públicas y privadas en nuestros sistemas, de esta forma podremos conectarnos a servidores remotos o, si es el caso, permitir que otras personas se conecten a nuestra máquina.

Para conectarnos desde nuestra máquina a un servidor remoto debemos:

Ejecutar el comando ssh-copy-id -i ubicación-llave-pública nombre-usuario@dirección-IP-servidor-remoto y escribir nuestra contraseña para enviar nuestra llave pública al servidor.
Usar el comando ssh nombre-usuario@dirección-IP-servidor-remoto para conectarnos al servidor sin necesidad de escribir contraseñas.
También podemos usar el comando ssh -v ... para ver la información o los errores de nuestra conexión con el servidor. Puedes usar la letra v hasta 4 veces (-vvvv) para leer más información.

Las configuraciones de SSH se encuentran en el archivo /etc/ssh/sshd_config.