# Entendiendo la membresía de los grupos

Los grupos nos ayudan a darle los mismos permisos a diferentes usuarios al mismo tiempo, sin necesidad de asignar el mismo permiso a cada usuario individualmente. Todos los usuarios que pertenezcan al mismo grupo tendrán los mismos permisos.

Para cambiar de usuario sin necesidad de reiniciar el sistema podemos usar el comando su - nombre-usuario. También podemos cambiar de usuario sin necesidad de saber su contraseña usando el comando sudo su - nombre-usuario.

Para ver a qué grupos pertenecen nuestros usuarios usamos el comando groups nombre-usuario. Para agregar usuarios a un nuevo grupo usamos el comando sudo gpasswd -a nombre-usuario nombre-grupo. Los eliminamos de la misma forma con gpasswd -d.

Para esto también podemos usar el comando sudo usermod -aG nombre-grupo nombre-usuario. Recuerda que en este caso el orden en que escribimos el grupo y el ususario se invierte.

Para listar los permisos de nuestros usuarios ejecutamos el comando sudo -l.

# Comandos utiles 

```bash
sudo gpasswd -a usuario grupo
sudo gpasswd -d usuario grupo
usermod -aG grupo usuario (agrega usuario a otro grupo)

passwd -l nombreusuario (bloquea)
passwd -u nombreusuario (desbloquea)
passwd --mindays=90 nombreusuario
passwd --maxdays=90 nombreusuario

usermod -L usuario
usermod -U usuario
```