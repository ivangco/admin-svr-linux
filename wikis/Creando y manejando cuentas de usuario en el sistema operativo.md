# Creando y manejando cuentas de usuario en el sistema operativo


```bash
sudo useradd nombre-usuario
```
crea un usuario sin asignarle inmediatamente alguna contraseña ni consultar más información. Debemos terminar de configurar esta cuenta a mano posteriormente.

```bash
sudo adduser nombre-usuario
```
crea un nuevo usuario con contraseña y algo más de información. También creará una nueva carpeta en la carpeta /home/.

```bash 
userdel nombre-usuario
```
eliminar cuentas de usuarios.

```bash 
usermod
```
modificar la información de alguna cuenta.

> **nota:** Nunca modifiques a mano el archivo /etc/passwd. Para administrar los usuarios debemos usar los comandos que estudiamos en clase.