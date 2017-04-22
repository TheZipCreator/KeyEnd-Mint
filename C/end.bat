@echo off
if "%1" == "/m" goto else
:normal
echo %1 %2 %3 %4
goto end
:else
set /a out = %2+%3
echo %out%
goto end
:end