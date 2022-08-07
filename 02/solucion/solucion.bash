#!/bin/bash

# Ejercicio 1

echo "-> Creando archivos ejercicio 1..."

# Importante: For sólo está disponible en bash, no en sh
for (( i=0; i<9; i++ ));
do
  current=$((i+1))
  touch "archiv$current"
done

# Remover permisos
echo "-> Removiendo todos los permisos ejercicio 1..."
chmod a-rwx archiv*

ls -l

# Ejercicio 2

declare -a permisos
permisos=('u=rwx,go=' 'u=rw,go=' 'a=rwx' 'u=rwx,g=rw,o=r' 'u=rwx,g=r,o=' 'u=rx,g=rw,o=r' 'u=r,g=,o=x' 'u=rw,g=r,o=r' 'u=rw,g=rw,o=r')
lenPermisos=${#permisos[@]}

# Asignar permisos
for (( i=0; i<$lenPermisos; i++));
do
  current=$((i+1))  
  chmod ${permisos[$i]} "archiv$current"
done

# Ejercicio 3

echo "-> Aplicando cambios ejercicio 2..."
ls -l

declare -a nuevosPermisos
nuevosPermisos=('o+r' 'u-w' 'a-x' 'go-r' 'g-r,o+wx' 'u+w,o-r' 'u+w,g+x,o-x,o+w' 'u-rw,g-r' 'u+rw,g+rw,o+r')
lenNuevosPermisos=${#nuevosPermisos[@]}

# Asignar nuevos permisos
for (( i=0; i<$lenNuevosPermisos; i++));
do
  current=$((i+1))  
  chmod ${nuevosPermisos[$i]} "archiv$current"
done

echo "-> Aplicando cambios ejercicio 3..."
ls -l