echo off 
title Roblox Backups - Pinv's Development (Logged in as %username%)
color c
cls
echo Auto Updating...
curl https://ghpinv.github.io/rblx/rblxbackupauto.bat --output rblxbackupauto.bat
cls
echo.
echo Welcome to Pinv's Roblox Development Backup Center!
echo (AUTO UPDATING!) v1.3
echo Last Updated: 6/10/24
echo.
echo Hello %username%! The Date is %date%
echo.
echo Please enter a valid backup code
echo.
echo Valid codes are currently:
echo zombie - by Lamzzi
echo lampileofpoop - by Lamzzi
echo obby1 - by Pinv's Development
echo obby2 - by Pinv's Development
echo all - Download all backups on Pinv's Development Servers
echo status - Checks the Status of 2 Servers that are used to host these files.
echo codes - Shows this list
echo autooff - Turns off Auto Update...
echo.
set /p code="Enter a code: "
cls
echo.
echo Welcome to Pinv's Roblox Development Backup Center!
echo.
echo %code%
echo.
if "%code%" == "status" ( 
	echo.
	echo Checking Servers...
	ping github.com
	ping ghpinv.github.io
	set /p code="Enter a code: "
)
if "%code%" == "codes" ( 
	echo.
	echo Valid codes are currently:
	echo zombie - by Lamzzi
	echo lampileofpoop - by Lamzzi
	echo all - Download all backups on Pinv's Development Servers
	echo status - Checks the Status of 2 Servers that are used to host these files.
	echo codes - Shows this list
	echo.
	rblxbackupauto.bat
)
if "%code%" == "secret" ( 
	echo woah hacker mode
	color a
	echo zombie - by Lamzzi
	echo lampileofpoop - by Lamzzi
	set /p code="Enter a code: "
)
if "%code%" == "all" (
	cls
	echo.
	echo Are you sure you would like to download ALL backups?
	echo.
	echo Click the X on the window if this was a mistake
	echo.
	pause
	echo Downloading all backups!
	echo Obtaning zombie.rbxl from Pinv's Development Servers!
	curl https://ghpinv.github.io/rblx/zombie.rbxl --output zombie.rbxl
	echo.
	echo Obtaning lampileofpoop.rbxl from Pinv's Development Servers!
	curl https://ghpinv.github.io/rblx/lampileofpoop.rbxl --output lampileofpoop.rbxl
	echo.
	echo Obtaning obby1.rbxl from Pinv's Development Servers!
	curl https://ghpinv.github.io/rblx/obby1.rbxl --output obby1.rbxl
	echo.
	echo Obtaning obby2.rbxl from Pinv's Development Servers!
	curl https://ghpinv.github.io/rblx/obby2.rbxl --output obby2.rbxl
	echo.
	echo Successfully downloaded all backups!
	echo.
	echo Continue to close the window.
	pause
	exit /b
)

if "%code%" == "autooff" (
	cls
	echo.
	echo Updating...
	curl https://ghpinv.github.io/rblx/rblxbackup.bat --output rblxbackup.bat
	echo.
	echo Updated Please Restart
	echo.
	pause
	del rblxbackupauto.bat
	exit /b
) 

if "%code%" == "update" (
	cls
	echo.
	echo Updating...
	curl https://ghpinv.github.io/rblx/rblxbackupauto.bat --output rblxbackupauto.bat
	echo.
	rblxbackup.bat
) else (
	echo Obtaning %code%.rbxl from Pinv's Development Servers!
	curl https://ghpinv.github.io/rblx/%code%.rbxl --output %code%.rbxl
	%code%.rbxl
)
