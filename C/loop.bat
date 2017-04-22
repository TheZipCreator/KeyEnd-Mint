@echo off
set count=%1+1
:loop
set /a "count=%count% - 1"
if "%count%" LEQ "0" goto end
call data.bat %2 %3 %4
goto loop
:end
echo Loop Terminated (%1 Entries)