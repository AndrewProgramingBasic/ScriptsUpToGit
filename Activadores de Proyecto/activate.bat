@echo off

REM Activar entorno de Python y poner en marcha el backend
call code .
start powershell -NoExit -Command "cd ./api.iacurses.com/; ./venv/Scripts/activate;cd ./src/;python app.py"

REM Poner en marcha el front
start powershell -NoExit -Command "cd ./iacursesgenerate.com/; npm run dev"
start http://localhost:3000
exit