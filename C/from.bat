@echo off
for /f "tokens=* delims=" %%x in (%1) do call data.bat %2 %%x %3 %4