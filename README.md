# ScriptsUpToGit

 Scripts para la gestión de repositorios Git

Este repositorio contiene scripts para simplificar tareas comunes de Git, como realizar `pull` en múltiples repositorios y `push` en uno o varios repositorios.

## Scripts disponibles

### 1. `pullgit.sh` / `pullgit.bat` (Pull en múltiples repositorios)

Este script automatiza la ejecución del comando `git pull` en todos los subdirectorios que contienen repositorios Git dentro del directorio donde se ejecuta el script.

#### Uso

1.  Coloca este script en el directorio que contiene las carpetas raíz de tus proyectos Git.
2.  Abre una terminal (o línea de comandos en Windows) en ese directorio.
3.  Ejecuta el script con `./pullgit.sh` (o `pullgit.bat` en Windows). Asegúrate de que el script tenga permisos de ejecución (`chmod +x pullgit.sh` en Linux/macOS).

#### Explicación

El script itera sobre todas las subcarpetas del directorio actual. Para cada subcarpeta, verifica si contiene un directorio `.git`. Si lo contiene, ejecuta el comando `git pull origin main` (o la rama que especifiques en el script). La salida de cada `git pull` se guarda en el archivo `pull_log.txt` para su revisión.

#### Notas

*   Asegúrate de tener Git instalado y configurado correctamente.
*   Si tu rama principal no es `main`, modifica el script para usar el nombre correcto (ej: `master`).
*   El archivo `pull_log.txt` contendrá un registro de todas las operaciones `git pull`, incluyendo cualquier error.
*   En Windows, si no usas Git Bash, considera alternativas a `tee` para la correcta generación del log.

### 2. `push_unico.sh` / `push_unico.bat` (Push en un solo repositorio)

Este script simplifica el proceso de subir cambios locales a un único repositorio Git remoto.

#### Uso

1.  Coloca este script en la carpeta raíz de tu proyecto Git.
2.  Abre una terminal (o línea de comandos en Windows) en la carpeta raíz del proyecto.
3.  Ejecuta el script con `./push_unico.sh` (o `push_unico.bat` en Windows). Asegúrate de que el script tenga permisos de ejecución (`chmod +x push_unico.sh` en Linux/macOS).

#### Explicación

El script ejecuta los siguientes comandos Git:

*   `git add .`: Añade todos los cambios al área de preparación (staging area).
*   `git commit -m "[MENSAJE INSERTADO POR USUARIO]"`
*   `git push`


### 3. `push_multi.sh` / `push_multi.bat` (Push en múltiples repositorios)

Este script ejecuta el script `push_unico.sh` (o `push_unico.bat`) en todos los subdirectorios que contienen un repositorio Git.

#### Uso

1.  Coloca este script en el directorio que contiene las carpetas raíz de tus proyectos Git.
2.  Coloca una copia del script `push_unico.sh` (o `push_unico.bat`) en la carpeta raíz de *cada uno* de los proyectos Git.
3.  Abre una terminal (o línea de comandos en Windows) en el directorio que contiene los proyectos.
4.  Ejecuta el script con `./push_multi.sh` (o `push_multi.bat` en Windows). Asegúrate de que el script tenga permisos de ejecución (`chmod +x push_multi.sh` en Linux/macOS).

#### Explicación

El script itera sobre todas las subcarpetas del directorio actual. Para cada subcarpeta, verifica si existe el script `push_unico.sh` (o `push_unico.bat`). Si existe, lo ejecuta.

#### Notas

*   Este script depende de la presencia del script `push_unico.sh` (o `push_unico.bat`) en cada subdirectorio de proyecto.
*   Asegúrate de que los scripts `push_unico.sh` (o `push_unico.bat`) estén configurados correctamente en cada proyecto.

## Consideraciones generales

*   Los scripts `.sh` están diseñados para sistemas Linux/macOS, mientras que los scripts `.bat` están diseñados para Windows.
*   Asegúrate de tener Git instalado y configurado correctamente en tu sistema.
*   Adapta los scripts a tus necesidades, como cambiar la rama por defecto (`main` por `master` u otra).
