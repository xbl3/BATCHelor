@echo off
if "%1" == "" ( 
explorer %cd% 
) else ( 
explorer %1 
) 
goto:eof
