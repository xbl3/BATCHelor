::if exist md C:\num del C:\num
if exist C:\num del C:\num
for /L %%i in (1,1,9) do @echo if "%%%%i" == "" ( exit /b %%i0%%i ) >> C:\num\if%%i.cmd