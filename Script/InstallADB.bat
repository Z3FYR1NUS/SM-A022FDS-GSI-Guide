@echo off
setlocal enabledelayedexpansion
title ADB Platform Tools Installer

:: Check Administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    color 0C
    echo.
    echo ========================================
    echo   ADMINISTRATOR PRIVILEGES REQUIRED
    echo ========================================
    echo.
    echo This script must be run as Administrator.
    echo.
    echo Right-click this file and select:
    echo "Run as administrator"
    echo.
    echo ========================================
    echo.
    pause
    exit /b 1
)

color 0A
cls
echo.
echo ========================================
echo   ADB Platform Tools Installer
echo ========================================
echo.

set "DEST=C:\ADB-platform-tools"
set "ZIP=%TEMP%\platform-tools.zip"
set "URL=https://dl.google.com/android/repository/platform-tools-latest-windows.zip"

:: Clean old installation
if exist "%DEST%" (
    echo [1/4] Removing old installation...
    rd /s /q "%DEST%"
    echo       Done.
    echo.
)

:: Download
echo [2/4] Downloading ADB Platform Tools...
echo       Size: ~7.4 MB
echo       Please wait...
echo.
powershell -NoProfile -Command "Invoke-WebRequest -Uri '%URL%' -OutFile '%ZIP%'"
echo       Download complete.
echo.

:: Extract
echo [3/4] Extracting files to %DEST%...
powershell -NoProfile -Command "Expand-Archive -Path '%ZIP%' -DestinationPath '%TEMP%' -Force"
move /y "%TEMP%\platform-tools" "%DEST%" >nul 2>&1
echo       Extraction complete.
echo.

:: Cleanup
del /f /q "%ZIP%" >nul 2>&1

:: Add to PATH
echo [4/4] Configuring system PATH...
set "NEWPATH="
for /f "skip=2 tokens=3*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path') do set "NEWPATH=%%a %%b"
echo !NEWPATH! | findstr /i /c:"%DEST%" >nul
if %errorlevel% neq 0 (
    setx /M Path "!NEWPATH!;%DEST%" >nul
    echo       Added to system PATH.
) else (
    echo       Already in system PATH.
)
echo.

color 0B
echo ========================================
echo   INSTALLATION COMPLETE
echo ========================================
echo.
echo ADB has been installed to:
echo %DEST%
echo.
echo IMPORTANT: Close this window and open a
echo NEW Command Prompt or PowerShell, then type:
echo.
echo   adb --version
echo.
echo to verify the installation.
echo ========================================
echo.
pause
