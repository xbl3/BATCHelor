
goto:eof

for %%z in (!remoteArray!) do ( 
		for %%y (rclone) do (
			for %%x (lsf) do (
				for %%w in ("--files-only" "--dirs-only") do (
echo		%%y %%x %%z %%w --absolute --max-depth 1 --skip-links --ignore-case 
) ) ) )  
) 



goto:eof
for /f "delims=" %%y in ('rclone') do ( 
	%%y lsf 
	for %%x in (--files-only --dirs-only) do (
	%%y lsf %%z %%x --absolute --max-depth 1 --skip-links --ignore-case 
) ) ) ) 


goto:eof
	for /f "delims=" %%b ('rclone lsd %%~z') do ( 
			echo:%%b 
	) 
					)
			) 
if exist %%b ( 
			
			for %%c in (--files-only --dirs-only) do ( 
				echo:%%~c
				rclone lsf %%a %%~c --absolute --max-depth 1 --skip-links --ignore-case
				echo:
								) 
							) 
						) 
					) 





goto:eof
for /f "delims=" %%a in ('rclone listremotes') do ( 
echo %%a
set remote=%%a
set remoteArray=!remoteArray! %%a
set /a remoteCount+=1
	 for %%b in (%%a) do ( 
	echo:%%b (!remoteCount!)
	set _b!remoteCount!=%%b
		set /p bRemote=
	for %%c in (!remoteArray!) do ( 
		echo:%%c (!remoteCount!)
		set _c!remoteCount!=%%c
			set /p cRemote=
					) 
		
			)
echo !bRemote!
echo !cRemote!
		)
	set /p remo

rclone copy O:\P2V\vCenter-Converter

