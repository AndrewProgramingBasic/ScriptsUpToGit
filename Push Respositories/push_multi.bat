@echo off

:: Iterar sobre cada carpeta, mostrar mensaje y ejecutar uptogit.bat
for /d %%f in (*) do (
    pushd %%f
    echo Estas subiendo a git el proyecto de la %%f
    call uptogit.bat
    echo.
    echo.
    popd
)