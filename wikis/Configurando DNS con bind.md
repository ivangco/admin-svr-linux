# Configurando DNS con bind

Antes de empezar a configurar el servicio de DNS, es importante conocer algo de historia, así como algunas alternativas que tenemos para comprar DNS.

Contexto histórico de los DNS
En Junio de 1983 alrededor de 70 sitios estuvieron conectados a la red de ciencias de la computación, permitiendo de esta forma la unión de algunos establecimientos gubernamentales, científicos y universitarios para que pudieran compartir datos, por esta razón los archivos de host no eran suficientes para hacer la replicación entre sitios, por este motivo en noviembre de 1983 se publicó el RFC 882 que define el servicio de nombre de dominios. Paso siguiente en octubre de 1984 se crearon 7 TLDs (Dominios de nivel superior) o también conocidos como dominios de propósito general .arpa, .com, .org, .edu, .gov, .mil y la letra de los países respetando su código ISO [1]

Instalación de Bind
Para realizar el proceso de instalación de bind lo primero que realizaremos es verificar que bind se encuentre en los repositorios, para esto utilizaremos otro gestor de paquetes llamado aptitude, para instalarlo simplemente diremos sudo apt install aptitude.

Con aptitude instalado buscaremos el paquete bind utilizando para ellos una expresión regular.

El proceso de instalación se realiza con sudo apt install -y bind9 , la opción -y es para confirmar que si queremos instalar el paquete en mención.

Validamos la instalación con netstat y verificaremos que el puerto 53 esté en escucha

Si deseamos ver el programa que está ejecutando este servicio agregamos el modificador p a netstat, así como sudo. sudo netstat -ltnp

Para realizar consultas al DNS podemos utilizar varias herramientas, entre ellas dig, que me permiten conocer más al respecto del nombre de dominio, para ello usaremos el dominio platzi.com y lo buscaremos en la máquina local, es decir 127.0.0.1

dig www.platzi.com @127.0.0.1

Allí encontraremos una salida, nos interesa la parte de respuesta y la de tiempo de ejecución para validar que la respuesta se dio desde localhost.

Paso siguiente después de instalarlo es verificar todo lo que viene incluido dentro del paquete como lo son los archivos de configuración manuales entre otros, para esto podemos hacer uso de dpkg -L bind9.

Si deseas adquirir tu DNS, tienes varias opciones:

Namecheap
Hover
Route 53
Como cliente tienes varias opciones para configurar tus DNS, lo que influirá directamente en tu velocidad, seguridad o reputación. Para eso te daré algunas opciones, el orden no significa nada:

OpenDns
Google DNS
Neustar UltraDNS
Cloudflare
quad
Public DNS
Yandex DNS
Existe una herramienta que nos permite seleccionar cuál será el DNS que debemos utilizar basados en nuestra ubicación y nuestras búsquedas, se llama namebench. Para ello sólo basta instalarlo y ejecutarlo en la máquina cliente y con esto obtendremos sugerencias al respecto.

https://tools.ietf.org/html/rfc920


v