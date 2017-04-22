@echo off
if %1==1 @echo 1 > mode.txt
if %1==0 @echo 0 > mode.txt
cd C
call autoexec.bat
:input
set /p input="C:\"
call data.bat %input%
goto input