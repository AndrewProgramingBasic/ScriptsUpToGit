#!/bin/bash

# Almacenar las carpetas en una variable (array)
carpetas=$(ls -d */)

# Iterar sobre cada carpeta y ejecutar git pull
for carpeta in $carpetas; do
    cd "$carpeta"  # Entrar a la carpeta
    git pull        # Ejecutar git pull
    cd ..           # Volver al directorio anterior
done