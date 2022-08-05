#!/bin/bash

read -p "-> Introduzca una url " url
echo "Descargando..."
wget -O result $url
read -p "-> Introduzca un valor de búsqueda " find
echo "Buscando..."
grep -E -i "?$find?" result -n
