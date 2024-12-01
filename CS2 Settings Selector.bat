@echo off
:: Display menu options
echo ==========================================
echo         CS2 Settings Selector
echo ==========================================
echo Choose a setting to apply:
echo [1] MAIN
echo [2] TRYHARD
echo [3] FARM
echo [4] ARMSRACE
echo [5] SKIN INSPECT
echo ==========================================

:: Prompt for user input
set /p choice=Enter your choice (1/2/3/4/5): 

:: Define base folder
set "baseFolder=%~dp0..\CS2-Settings-Selector"

:: Determine the selected folder based on the user's choice
if %choice%==1 (
    set "settingFolder=SET MAIN"
) else if %choice%==2 (
    set "settingFolder=SET TRYHARD"
) else if %choice%==3 (
    set "settingFolder=SET FARMING"
) else if %choice%==4 (
    set "settingFolder=SET ARMSRACE"
) else if %choice%==5 (
    set "settingFolder=SET SKIN INSPECT"
) else (
    echo ==========================================
    echo Invalid choice. Please try again.
    echo ==========================================
    pause
    exit /b
)

:: Display the selected setting and path for confirmation
echo ==========================================
echo Selected Setting: %settingFolder%
echo Path to Apply: %baseFolder%\%settingFolder%
echo ==========================================

:: Check if the setting folder exists
if not exist "%baseFolder%\%settingFolder%" (
    echo ==========================================
    echo ERROR: Folder "%baseFolder%\%settingFolder%" not found!
    echo Please ensure the folder exists and try again.
    echo ==========================================
    pause
    exit /b
)

:: Notify the user of the ongoing process
echo ==========================================
echo Applying settings from: %baseFolder%\%settingFolder%
echo ==========================================

:: Loop through and apply settings to Steam userdata folders
for /D %%a in ("C:\\Program Files (x86)\\Steam\\userdata\\*") do (
    echo Applying settings to: %%a
    xcopy "%baseFolder%\%settingFolder%\*" "%%a\\" /s /e /y >nul
)

:: Final confirmation
echo ==========================================
echo Settings applied successfully!
echo ==========================================
