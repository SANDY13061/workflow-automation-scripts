@echo off

REM Define paths and commands
set FRONTEND_PATH=C:\FE04
set BACKEND_PATH=C:\BE2.0
set FRONTEND_CMD=npm start
set BACKEND_CMD=npm run dev

REM Open front end code
start "" code "%FRONTEND_PATH%"

REM Navigate to frontend directory and run npm start
start "" cmd /c "cd /d %FRONTEND_PATH% && %FRONTEND_CMD%"

REM Open back end code
start "" code "%BACKEND_PATH%"

REM Navigate to backend directory and run npm run dev
start "" cmd /c "cd /d %BACKEND_PATH% && %BACKEND_CMD%"
