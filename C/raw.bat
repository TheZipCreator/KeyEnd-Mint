@echo off
if exist %1 goto exist
echo Your Input "%1" Is Invalid
goto end
:exist
echo Calling %1 Directly...
call %1 %2 %3 %4 %5
goto end
:end