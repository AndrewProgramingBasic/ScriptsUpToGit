#!/bin/bash

# Almacenar las carpetas en una variable (array)
carpetas=$(ls -d */)

# Iterar sobre cada carpeta y subir el proyecto correspondiente a git
for carpeta in $carpetas; do
    cd "$carpeta"  # Entrar a la carpeta
    echo "Estas subiendo a git el proyecto de la $carpeta"
    sh  push_unico.sh       # subir el proyecto correspondiente a git
    echo ""
    echo ""
    cd ..           # Volver al directorio anterior
done
