@echo off
chcp 65001 >nul
color 5
mode con: cols=100 lines=30
cls

echo.
echo  ▒█████   ███▄    █  ██▓   ▓██   ██▓  ██████    ▄▄▄█████▓ ██▀███   ██▓ ▄████▄   ██ ▄█▀
echo ▒██▒  ██▒ ██ ▀█   █ ▓██▒    ▒██  ██▒▒██    ▒    ▓  ██▒ ▓▒▓██ ▒ ██▒▓██▒▒██▀ ▀█   ██▄█▒ 
echo ▒██░  ██▒▓██  ▀█ ██▒▒██░     ▒██ ██░░ ▓██▄      ▒ ▓██░ ▒░▓██ ░▄█ ▒▒██▒▒▓█    ▄ ▓███▄░ 
echo ▒██   ██░▓██▒  ▐▌██▒▒██░     ░ ▐██▓░  ▒   ██▒   ░ ▓██▓ ░ ▒██▀▀█▄  ░██░▒▓▓▄ ▄██▒▓██ █▄ 
echo ░ ████▓▒░▒██░   ▓██░░██████▒ ░ ██▒▓░▒██████▒▒     ▒██▒ ░ ░██▓ ▒██▒░██░▒ ▓███▀ ░▒██▒ █▄
echo ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░ ▒░▓  ░  ██▒▒▒ ▒ ▒▓▒ ▒ ░     ▒ ░░   ░ ▒▓ ░▒▓░░▓  ░ ░▒ ▒  ░▒ ▒▒ ▓▒
echo   ░ ▒ ▒░ ░ ░░   ░ ▒░░ ░ ▒  ░▓██ ░▒░ ░ ░▒  ░ ░       ░      ░▒ ░ ▒░ ▒ ░  ░  ▒   ░ ░▒ ▒░
echo ░ ░ ░ ▒     ░   ░ ░   ░ ░   ▒ ▒ ░░  ░  ░  ░       ░        ░░   ░  ▒ ░░        ░ ░░ ░ 
echo     ░ ░           ░     ░  ░░ ░           ░                 ░      ░  ░ ░      ░  ░   
echo                             ░ ░                                       ░              

echo.
:: Efeito de digitação
setlocal enabledelayedexpansion
set text=Injetando Mouse Fix
for /l %%i in (0,1,30) do (
    set char=!text:~%%i,1!
    echo|set /p=!char!
    ping localhost -n 1 -w 100 >nul
)
echo.

:: Em processo...
echo Em processo...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/luiszzin001/mousefix/raw/main/mousefixonly.reg' -OutFile 'C:\Windows\System32\mousefixonly.reg'"

:: Executando Mouse Fix
echo Executando Mouse Fix...
reg import "C:\Windows\System32\mousefixonly.reg"

timeout /t 3 /nobreak >nul

exit