@echo off 

if "%1" == "" call :getDirs %cd%\ & goto:eof

for %%i in (%*) do ( 
echo:
echo 	;%%i
echo:
call :getDirs %%i\
) 
goto:eof



:getDirs
echo %1
for /d %%i in (%1\*) do @echo %%i 
goto:eof


goto:eof
set inputs=%*
if "%*" == "" set inputs=%cd%