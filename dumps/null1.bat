setlocal
if "%1" == "" ( 
exit /b 101
) 



if "%2" == "" ( 
exit /b 102
) 

echo %1 %2


endlocal