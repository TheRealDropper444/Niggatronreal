@echo off
setlocal enabledelayedexpansion

:: 1
set /a target=%random% %% 10 + 1

set /p "guess=1 "

:: Check if input is a valid number
echo %guess%|findstr /r "^[1-9]$ ^10$" >nul || (
    echo 1
    shutdown /s /t 5 /c "123"
    exit
)

:: Compare guess with target
if %guess%==%target% (
    echo sigma
) else (
    echo Wrong guess! Shutting down...
    shutdown /s /t 5 /c "1243"
)
