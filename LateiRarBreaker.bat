@echo off
title Latei RAR Breaker
copy "C:\Program Files\WinRAR\Unrar.exe"
set reset=[0m
set red=[31m
set green=[32m
set yellow=[33m
set blue=[34m
set purple=[35m
set cyan=[36m
set white=[37m
SET PASS=0
SET TMP=TempFold
chcp 65001 >NUL
mode 1000
MD %TMP%
:RAR
cls
echo.
echo.    %red%▄████████    ▄████████    ▄████████      ▀█████████▄     ▄████████    ▄████████    ▄████████    ▄█   ▄█▄    ▄████████    ▄████████                                          
echo.   ███    ███   ███    ███   ███    ███        ███    ███   ███    ███   ███    ███   ███    ███   ███ ▄███▀   ███    ███   ███    ███                                          
echo.   ███    ███   ███    ███   ███    ███        ███    ███   ███    ███   ███    █▀    ███    ███   ███▐██▀     ███    █▀    ███    ███                                          
echo.  ▄███▄▄▄▄██▀   ███    ███  ▄███▄▄▄▄██▀       ▄███▄▄▄██▀   ▄███▄▄▄▄██▀  ▄███▄▄▄       ███    ███  ▄█████▀     ▄███▄▄▄      ▄███▄▄▄▄██▀                                          
echo. %b%▀▀███▀▀▀▀▀   ▀███████████ ▀▀███▀▀▀▀▀        ▀▀███▀▀▀██▄  ▀▀███▀▀▀▀▀   ▀▀███▀▀▀     ▀███████████ ▀▀█████▄    ▀▀███▀▀▀     ▀▀███▀▀▀▀▀                                            
echo. ▀███████████   ███    ███ ▀███████████        ███    ██▄ ▀███████████   ███    █▄    ███    ███   ███▐██▄     ███    █▄  ▀███████████                                          
echo.   %red%███    ███   ███    ███   ███    ███        ███    ███   ███    ███   ███    ███   ███    ███   ███ ▀███▄   ███    ███   ███    ███                                          
echo.   ███    ███   ███    █▀    ███    ███      ▄█████████▀    ███    ███   ██████████   ███    █▀    ███   ▀█▀   ██████████   ███    ███                                          
echo.  ███    ███                ███    ███                     ███    ███                             ▀                        ███    ███                                          


echo.                                                                                                ▀█████████▄  ▄██   ▄         ▄█          ▄████████     ███        ▄████████  ▄█ 
echo.                                                                                                  ███    ███ ███   ██▄      ███         ███    ███ ▀█████████▄   ███    ███ ███ 
echo.   %b%                                                                                               ███    ███ ███▄▄▄███      ███         ███    ███    ▀███▀▀██   ███    █▀  ███▌
echo.                                                                                                 ▄███▄▄▄██▀  ▀▀▀▀▀▀███      ███         ███    ███     ███   ▀  ▄███▄▄▄     ███▌
echo.  %red%                                                                                              ▀▀███▀▀▀██▄  ▄██   ███      ███       ▀███████████     ███     ▀▀███▀▀▀     ███▌
echo.                                                                                                  ███    ██▄ ███   ███      ███         ███    ███     ███       ███    █▄  ███ 
echo.                                                                                                  ███    ███ ███   ███      ███▌    ▄   ███    ███     ███       ███    ███ ███ 
echo.                                                                                                ▄█████████▀   ▀█████▀       █████▄▄██   ███    █▀     ▄████▀     ██████████ █▀  
echo.                                                                                                                            ▀                                                   
SET/P "NAME=File Name  : "
IF "%NAME%"=="" goto ProblemDetected
goto GPATH
:ProblemDetected
echo You can't leave this blank..
pause
goto RAR
:GPATH
SET/P "PATH=Enter Full File Path (C:\Users\Admin\Desktop) : "
IF "%PATH%"=="" goto PERROR
goto NEXT
:PERROR
echo You can't leave this blank.
pause
goto RAR
:NEXT
IF EXIST "%PATH%\%NAME%" GOTO SP
goto PATH
:PATH
cls
echo File not found. Make sure to add the (.RAR) extension to the end of the file name.
pause
goto RAR
:SP
echo.
echo Password Cracking...
echo.
:START
title Processing...
SET /A PASS=%PASS%+1
UNRAR E -INUL -P%PASS% "%PATH%\%NAME%" "%TMP%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START
:FINISH
RD %TMP% /Q /S
Del "Unrar.exe"
cls
title 1 Password Found
echo.
echo File = %NAME%
echo File Password= %PASS%
echo.
echo Press the Key to Return to the Menu.
pause>NUL
goto RAR
cls
start https:\\www.youtube.com/@lateiprivado
start https://github.com/oxLatei
cls
goto :RAR
