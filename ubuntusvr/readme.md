```
# para descargar la imagen
```bash 
 docker pull ubuntu:18.04

```
# para ver que contenedores están corriendo
```bash 
docker ps

```
# para correr el contenedor de ubuntu
```bash 
 docker run -td --name ubuntu-platzi ubuntu:18.04

```
# para detener el contenedor 
```bash 
 docker stop ubuntu-platzi

```
# para levantar nuevamente el servidor
```bash 
 docker start ubuntu-platzi

```
# para acceder al contenedor y correr comandos dentro de este
```bash 
 docker exec -it ubuntu-platzi bash