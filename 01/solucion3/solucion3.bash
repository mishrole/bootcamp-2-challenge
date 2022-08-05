#!/bin/bash

echo "Creando carpeta foo..."
mkdir foo
echo "Creando carpetas foo/dummy y foo/empty..."
mkdir foo/dummy foo/empty

echo "Creando archivo file1.txt en foo/dummy..."
read -p "-> Introduzca contenido para file1.txt " contentInput
contentLength=${#contentInput}
content="Que me gusta bash!!!!"

if [ $contentLength -gt 0 ]
then
  content="$contentInput"
fi

echo $content > foo/dummy/file1.txt

echo "Creando archivo file2.txt en foo/dummy..."
touch foo/dummy/file2.txt
echo "Copiando contenido de file1.txt en file2.txt..."
cp foo/dummy/file1.txt foo/dummy/file2.txt
echo "Moviendo file2.txt a foo/empty..."
mv foo/dummy/file2.txt foo/empty