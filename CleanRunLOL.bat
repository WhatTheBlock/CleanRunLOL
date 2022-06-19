@echo off
title CleanRunLOL

:: get login commandline
wmic path win32_process get commandline | findstr "RiotClientServices.exe" > %temp%\temp.txt

:: close Garena & LOL
@taskkill /f /im findstr.exe > nul
@taskkill /f /im gxxsvc.exe > nul
@taskkill /f /im gxxapphelper.exe > nul
@taskkill /f /im Garena.exe > nul
@taskkill /f /im LeagueClient.exe > nul

:: disable Garena prelaunch task
@schtasks /change /tn "gxx speed launcher" /disable > nul

:: get the actual commandline
findstr "RiotClientServices.exe" %temp%\temp.txt > %temp%\RunLOL.bat

:: add exit command
echo exit 2 >> %temp%\RunLOL.bat

:: start LOL
@start /b %temp%\RunLOL.bat > nul

:: delay 3s avoid error
@ping 127.0.0.1 -n 3 -w 1000 > nul

:: LOL will not start until it is closed
@taskkill /f /im findstr.exe > nul
