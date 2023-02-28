# Análisis de los parámetros de red

Una IP es un identificador único para los equipos que están conectados a una red.

Las IPs Privadas se utilizan para identificar los dispositivos dentro de una red local. Por ejemplo: los dispositivos conectados en tu casa u oficina.

Las IPs Públicas son la que se asignan a cualquier dispositivo conectado a Internet. Por ejemplo: los servidores que alojan tus sitios web, el router que te da acceso a internet, entre otros.

Si tu dispositivo tiene una IP pública significa que puede conectarse a otro que también tenga una. Por esto mismo, no puede haber dos dispositivos con la misma IP pública.

Para encontrar la dirección IP de nuestros dispositivos podemos usar los comandos ifconfig en Linux y Mac o ipconfig en Windows. También podemos usar el comando ip a.

Para ver el nombre/identificador de nuestro equipo en todas las redes podemos usar el comando hostname. También podemos ver qué dispositivo nos permite acceso a Internet con el comando `route -n`.

Para identificar las IPs de diferentes dominios podemos usar el comando `nslookup` nombredominio.ext. También podemos usar el comando curl para realizar consultas a algún servidor.