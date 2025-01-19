@echo off

:: Iterar directamente sobre las carpetas y ejecutar git pull
for /d %%f in (*) do (
    pushd %%f
    git pull
    popd
)