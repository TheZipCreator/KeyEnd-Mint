@echo off
if not exist %1 goto new
echo Your Input "%1" Is Invalid
goto end
:new
mkdir %1
echo Created Directory "%1"
:end