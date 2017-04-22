@echo off
if "%1" == "/r" goto rand
:cache
@echo %1 > %2.cache
goto end
:rand
@echo %random% > %2.cache
goto end
:end