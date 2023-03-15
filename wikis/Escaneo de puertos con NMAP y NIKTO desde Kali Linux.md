RESUMEN DE LA CLASE
|
Escaneo de puertos con NMAP y NIKTO desde Kali Linux
|
|
Comandos
|

nmap -sV -sC -0 -oA nombre_de_archivo dirección_ip_del_servidor: Realiza un mapeo de la red
nikto -h ip_del_host -o nombre_de_archivo: Escanea vulnerabilidades en un servidor

Uso de nmap (Fuente nmap.org):

nmap [Scan Type(s)] [Options] {target specification}

-sV Service/version info (Información acerca de los puertos abiertos).
-sC Permite utilizar el motor de scripts.
-O Habilita la detección de OS.
-p- Escanea todos los puertos.
-oA Envía la salida a un archivo