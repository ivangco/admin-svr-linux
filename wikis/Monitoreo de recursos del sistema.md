# Monitoreo de recursos del sistema

El comando `top` nos permite interactuar con una interfaz gráfica que nos muestra información específica del sistema operativo: cantidad de usuarios, tareas corriendo o “durmiendo”, identificadores de los procesos, entre otras.

Para ver la información de la CPU podemos usar el comando `cat /proc/cpuinfo | grep "processor"`. Recuerda que Linux hace diferencia entra mayúsculas y minúsculas, pero puedes usar el comando` grep -i `para filtrar sin estas diferencias.

Para ver la información de la memoria podemos usar el comando `free` o, para que la información sea más fácil de leer, `free -h`. Y para ver el uso del disco duro está el comando `du` o `du -hsc`.

## Comandos útiles
```bash 
cat /proc/cpuinfo | grep "processor"
```
Muestra información sobre el CPU

```bash
sudo ps auxf | sort -nr -k 3 | head -5
```

Muestra los 5 procesos que más uso hacen del CPU
```bash
sudo ps auxf | sort -nr -k 4 | head -5
```
Muestra los 5 procesos que más uso hacen de la memoria RAM

>`sort`
Ordenar líneas de los archivos de entrada a partir de criterios de ordenación. Los espacios en blanco son tomados por defecto como separadores de campo.

Su sintaxis es de la forma:
```bash 
sort [opciones] [archivo]
```