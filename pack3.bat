@echo off 


set extensions=zip 7z rar bat cmd ps1 exe txt hlp chm

set root=C:\
set home=%userprofile%
set win=%windir%

set all3=%win% %root% %home% 


for %%i in (%extensions%) do ( 
	for %%I in (%all3%) do ( 
		7za a C:\All3_winRootHome.zip -tzip %%I\*.%%i 
		) 
	)
) 
goto:eof


goto:eof

