@echo off
echo Auto Execute Running...
@echo 1.0 > version.txt
@echo Developer > edition.txt
for /f "tokens=* delims=" %%x in (version.txt) do title Key End %%x
cls
for /f "tokens=* delims=" %%x in (version.txt) do echo Key End Version %%x
for /f "tokens=* delims=" %%x in (edition.txt) do echo %%x Edition

