@echo off
title SVF Homes – A2B Server
echo ================================================
echo   SVF Homes – Ambattur A2B  ^|  Local Server
echo ================================================
echo.
echo  Starting server on http://localhost:8000
echo  Keep this window open while using the website.
echo  Close this window to stop the server.
echo.

REM Kill any old instance on port 8000
for /f "tokens=5" %%a in ('netstat -aon 2^>nul ^| findstr :8000 ^| findstr LISTENING') do (
    taskkill /PID %%a /F >nul 2>&1
)
timeout /t 1 /nobreak >nul

REM Open browser first
start "" "http://localhost:8000"

REM Start the Python server
python "%~dp0serve.py"

pause
