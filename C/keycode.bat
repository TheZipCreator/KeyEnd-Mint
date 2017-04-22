@echo off
cls
echo Welcome To KeyCode!
echo Type "exit_x" While Writing To Exit.
set /p filename="Filename: "
echo Editing %filename%.key
:loop
set /p msg="Write: "
if "%msg%"=="exit_x" goto end
@echo call data.bat %msg% >> %filename%.key
goto loop
:end
echo Exiting KeyCode...
cls