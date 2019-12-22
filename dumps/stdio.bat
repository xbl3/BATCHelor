@echo off 
setlocal enabledelayedexpansion

set "im=%~n0"
set "tempList=%tmp%\!im!.txt"
set "tempCloudID=0ABbDh9ZOsq5jUk9PVA"
set "tempAccount=C:\sa\neverhappenright-9c12d064328d.json"

set "_drive-team-drive=--drive-team-drive !tempCloudID!"
set "_drive-service-account-file=--drive-service-account-file !tempAccount!"


set "_driveDUO=!_drive-team-drive! !_drive-service-account-file!"



for %%a in (%*) do @echo %%a >> !tempList!
rclone copy !tempList! :drive: !_driveDUO! 
rclone copy !tempList! :drive:!im! !_driveDUO! 
for %%i in (stdin stdout) do ( 
		for %%I in (%*) do (
		%%I | find /I "%%i"
		) 
	)

rclone cat :drive:!im! !_driveDUO! 
rclone ls :drive:!im! !_driveDUO! 
goto:eof


:orgOneLiner
rclone copy !tempList! :drive: --drive-team-drive !tempCloudID! --drive-service-account-file !tempAccount! 
goto:eof