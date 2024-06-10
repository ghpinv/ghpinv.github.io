echo off 
title Roblox Backups - Pinv's Development
color c
cls
echo.
echo Welcome to Pinv's Roblox Development Backup Center!
echo.
echo Please enter a valid backup code or enter "update" to update the batch!
echo.
set /p code="Enter a code: "
cls
echo.
echo Welcome to Pinv's Roblox Development Backup Center!
echo.
echo %code%
echo.
if "%code%" == "update" (
	cls
	echo.
	echo Updating...
	curl https://ghpinv.github.io/rblx/rblxbackup.bat --output rblxbackup.bat
	echo.
	pause
	rblxbackup.bat
	pause
)