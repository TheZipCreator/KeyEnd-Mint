@echo off
title KeyEnd Bootup Menu
:back
echo Welcome To KeyEnd!
echo Please Type What Number You Want And Then Press Enter.
echo.
echo 1) Bootup Normally
echo 2) Bootup In Safe Mode
echo.
set /p option=""
cls
if "%option%"=="1" goto normal
if "%option%"=="2" goto safe
cls
goto back
:normal
echo Mode: Normal Mode
echo.
call display.bat 0
:safe
echo Mode: Safe Mode
echo.
call display.bat 1
:end
echo An Error Has Occured.
echo Please Report This Error Report To wooterxx09@gmail.com
echo a1: %1
echo a2: %2
echo a3: %3
echo a4: %4
echo a5: %5
timeout /t -1 /nobreak > nul