@echo off
echo Iniciando proceso de git pull en subdirectorios...

for /d %%a in (*) do (
  if exist "%%a\.git" (
    echo Actualizando repositorio en: %%a
    pushd %%a
    git pull origin main 2>&1 | tee -a pull_log.txt
    popd
  ) else (
    echo El directorio %%a no es un repositorio git
  )
)

echo Proceso completado. Revisar pull_log.txt para detalles.
pause