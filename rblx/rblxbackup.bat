echo off 
title Roblox Backups - Pinv's Development
color c
cls
echo.
echo Welcome to Pinv's Roblox Development Backup Center!
echo.
echo Please enter a valid backup code or enter "update" to update the batch!
echo.
echo Valid codes are currently:
echo zombie | by Lamzzi
echo lampileofpoop | by Lamzzi
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
	rblxbackup.bat
) else (
	echo Obtaning %code%.rbxl from Pinv's Development Servers!
	curl https://ghpinv.github.io/rblx/%code%.rbxl --output %code%.rbxl
	%code%.rbxl
)
