@echo off

REM UpToGit 0.1 (Windows)
REM Actualiza fácilmente tu repositorio Git
REM (CC) 2011 Alfonso Saavedra "Son Link"
REM http://sonlinkblog.blogspot.com
REM Bajo licencia GNU/GPL

REM Comprobamos si el directorio actual es un repositorio Git
if not exist ".git" (
    echo Esta carpeta no contiene un repositorio Git
    goto :eof
)

REM Comprobamos si se pasaron parámetros, si no, usamos "." por defecto
if "%~1"=="" (
    set files="."
) else (
    set files=%*
)

REM Recorremos los "files" (parámetros o ".") para comprobar si existen
for %%f in (%files%) do (
    if not exist "%%f" (
        echo UpToGit: El archivo o directorio %%f no existe
        goto :eof
    )
)

REM Indicamos a Git los archivos a subir (usando "" para rutas con espacios)
git add %files%

REM Pedimos el mensaje del commit
set /p TXT=Introduce el mensaje del commit: 
git commit -m "%TXT%"

REM Subimos los archivos
git push
