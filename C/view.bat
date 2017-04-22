@echo off
if exist %1 goto exist
echo Your Input "%1" Is Invalid
goto end
:exist
for /f "tokens=* delims=" %%x in (%1) do echo %%x
goto end
:end