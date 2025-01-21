#!/bin/bash

echo "Iniciando proceso de git pull en subdirectorios..."

for d in */; do # Itera sobre las subcarpetas
  if [ -d "$d/.git" ]; then # Verifica si la subcarpeta es un repositorio Git
    echo "Actualizando repositorio en: $d"
    cd "$d" # Entra a la subcarpeta
    git pull origin main 2>&1 | tee -a pull_log.txt # Ejecuta git pull y guarda el output en un archivo de registro
    cd .. # Regresa al directorio anterior
  else
    echo "El directorio $d no es un repositorio git"
  fi
done

echo "Proceso completado. Revisar pull_log.txt para detalles."