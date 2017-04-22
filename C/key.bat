@echo off
if exist %1.key goto exist
echo Your Input "%1" Is Invalid
goto end
:exist
erase temp.bat
erase *.cache
echo [Compiler] Cleared Cache
for /f "tokens=* delims=" %%x in (%1.key) do @echo %%x >> temp.bat
for /f "tokens=* delims=" %%x in (%1.key) do echo [Compiler] Wrote Line - %%x
for /f "tokens=* delims=" %%x in (%1.key) do set check=%%x
echo [Compiler] Conditioning %check%
if "%check%"==":loop " (
@echo :loop >> temp.bat
set x=1
echo [Compiler] Rewrote Line For Looping - call data.bat :loop
)

for /f "tokens=* delims=" %%x in (%1.key) do echo [Compiler] Checked Line - %%x
if "%x%" == "1" (
@echo goto loop >> temp.bat
)
call temp.bat %2 %3 %4
goto end
:end