# Usando PAM para el control de acceso de usuarios

PAM es un mecanismo para administrar a los usuarios de nuestro sistema operativo. Nos permite autenticar usuarios, controlar la cantidad de procesos que ejecutan cada uno, verificar la fortaleza de sus contraseñas, ver la hora a la que se conectan por SSH, entre otras.

Con el comando pwscore podemos probar qué tan fuertes son nuestras contraseñas. Recuerda que para usar este comando en sistemas basados en Ubuntu debemos instalar el paquete libpwquality-tools.

El comando ulimit nos ayuda a listar los permisos de nuestros usuarios. Para limitar el número de procesos que nuestros usuarios pueden realizar ejecutamos ulimit -u max-numero-procesos.


# extra

# ULIMIT - LÍMITES DE LOS USUARIOS
Con ulimit y ulimit -a puedo revisar la cantidad de recursos a los que tienen
acceso los usuarios, así como máximo de archivos abiertos, uso de memoria, etc.
Solo el usuario root puede determinar el número máximo de procesos (límite
hard) que se pueden ejecutar por parte de los otros usuarios del sistema. SIn
embargo, existe un límite que se puede establecer dependiendo de cada usuario
(límite soft) y que este mismo puede modificar (como máximo hasta el límite
hard). Por defecto los cambios que haga el usuario al límite soft solo tendran
efecto en el proceso que este ejecutando o en algunos procesos subsecuentes
de ese, porque al momento de cerrar sesión y volver a iniciar los valores del
límite soft retornaran a su valor original por defecto, a menos que se ejecute una
configuración especial como se muestra a continuación.
# MÁXIMO NUMERO DE ARCHIVOS ABIERTOS
Para mirar el número máximo de archivos abiertos permitidos por inicio de sesión
para el usuario , lo podemos hacer a través del comando: cat/proc/sys/fs/file-max
# ULIMIT USER LIMIT
El comando ulimit lo podemos utilizar para ver y definir los límites de recursos
para los usuarios que deseen iniciar sesión.
Con ulimit -a podemos desplegar toda la información correspondiente a los
límites de recursos por usuario: