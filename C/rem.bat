@echo off
if exist %1 goto exist
echo Your Input "%1" Is Invalid
goto end
:exist
echo Removed File "%1"
erase %1
goto end
:end