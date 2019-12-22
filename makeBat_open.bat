@echo off 

for %%i in (

"@echo off"
"if "%%~1" == "" explorer %%cd%% && goto:eof"
"if not "%%~1" == "" explorer "%%~1" && goto:eof"

) do ( 

echo %%~i

 ) >> %windir%\open.cmd
