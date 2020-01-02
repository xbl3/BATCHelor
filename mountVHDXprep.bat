@echo off 
for %%a in (B:\VirtualDisks\*.vhdx) do ( 
	echo %%a
	call :make.diskPartScript %%a 
	type %userprofile%\mnt\%%~na.txt 
	) 



goto:eof


goto:eof
:make.diskPartAttachScript

for %%i in (%1) do ( 
	if not exist %userprofile%\mnt\listMounts.txt ( echo list vdisk > %userprofile%\mnt\listMounts.txt )
		if not exist %userprofile%\mnt\select.%%~ni.txt ( 
			echo select vdisk file= "%%~dpnxi" > %userprofile%\mnt\%%~ni.txt 
			echo attach vdisk >> %userprofile%\mnt\%%~ni.txt 
		) 
	) 
goto:eof
