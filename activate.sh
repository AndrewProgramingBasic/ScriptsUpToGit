#!/bin/bash

# Abrir Visual Studio Code en la carpeta actual
code .

# Función para ejecutar un comando en una nueva pestaña
function ejec {
    gnome-terminal --tab -- bash -c "$1; exec bash"
}

# Activar el entorno virtual y ejecutar el backend en una nueva pestaña
ejec "cd api.iacurses.com && source venl/bin/activate && cd src && python app.py"

# Iniciar el frontend en una nueva pestaña
ejec "cd iacursesgenerate.com && npm run dev"

# Abrir el frontend en el navegador predeterminado (opcional)
xdg-open http://localhost:3000