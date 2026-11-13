@echo off
setlocal
title PetShift
set "PETSHIFT_PAGE=%~dp0START.html"
if not exist "%PETSHIFT_PAGE%" (
    echo Please extract the ZIP first and keep START.html beside this launcher.
    pause
    exit /b 1
)
set "PETSHIFT_URL=file:///%PETSHIFT_PAGE:\=/%"
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="%PETSHIFT_URL%" --window-size=1440,980
    exit /b 0
)
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="%PETSHIFT_URL%" --window-size=1440,980
    exit /b 0
)
if exist "%LOCALAPPDATA%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%LOCALAPPDATA%\Microsoft\Edge\Application\msedge.exe" --app="%PETSHIFT_URL%" --window-size=1440,980
    exit /b 0
)
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="%PETSHIFT_URL%" --window-size=1440,980
    exit /b 0
)
if exist "%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe" (
    start "" "%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe" --app="%PETSHIFT_URL%" --window-size=1440,980
    exit /b 0
)
start "" "%PETSHIFT_PAGE%"
exit /b 0
