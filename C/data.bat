@echo off
if "%1"==":loop" goto end
if exist %1.bat goto exist
echo Your Input "%1" Is Invalid
for /f "tokens=* delims=" %%x in (mode.txt) do if "%%x"=="1" (
if "%1"=="rem" goto sfd
)
goto end
:sfd
echo "%1" Is Disabled In Safe Mode!
:exist
call %1.bat %2 %3 %4 %5 %6 %7 %8 %9 
goto end
:end
