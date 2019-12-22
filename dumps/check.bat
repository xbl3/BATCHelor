@echo off
setlocal
call %windir%\null1.bat %* 
echo %errorlevel%
if %errorlevel% LEQ 101 echo no1
if %errorlevel% GTR 102 echo no2

endlocal