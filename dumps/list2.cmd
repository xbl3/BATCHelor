@echo off 
setlocal enabledelayedexpansion

if "%1" == "-f" goto:ListFolders
if "%1" == "-folders" goto:ListFolders

if "%1" == "" rclone listremotes 
if NOT "%1" == "" rclone lsd %1

goto:eof
:ListFolders
set remote=
set "remoteArray="
set remoteCount=0

for /f "delims=" %%a in ('rclone listremotes') do ( 

set remote=%%a
set remoteArray=!remoteArray! %%a 
echo:
	



for %%z in (%%a) do ( 
echo:lsfDirs %%z
rclone lsf %%z --dirs-only --absolute --max-depth 1 --skip-links --ignore-case 
echo:
echo:%%z
echo:
echo:lsfFiles %%z
rclone lsf %%z --files-only --absolute --max-depth 1 --skip-links --ignore-case
echo:
	)>> rcloneRemoteListings--LSF_D-F.txt

)
