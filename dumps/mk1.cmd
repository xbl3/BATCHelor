@echo off 

for %%i in (%*) do @ ( 
echo @echo off > "C:\cmd\%%~ni.cmd"
echo @"%%~i %%*" >> "C:\cmd\%%~ni.cmd"
type "C:\cmd\%%~ni.cmd"
set "madeApp=%%i"
"C:\cmd\%%~ni.cmd"
) 

