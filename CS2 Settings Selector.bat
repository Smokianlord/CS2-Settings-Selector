@echo off
echo Choose a setting to apply:
echo 1. MAIN
echo 2. TRYHARD
echo 3. FARM
echo 4. ARMSRACE
echo 5. SKIN INSPECT

set /p choice=Enter your choice (1/2/3/4/5): 

:: Get the path of the current directory where the script is located
set "baseFolder=%~dp0..\CS2-Settings-Selector"

if %choice%==1 (
    set settingFolder=SET MAIN
) else if %choice%==2 (
    set settingFolder=SET TRYHARD
) else if %choice%==3 (
    set settingFolder=SET FARMING
) else if %choice%==4 (
    set settingFolder=SET ARMSRACE
) else if %choice%==5 (
    set settingFolder=SET SKIN INSPECT
) else (
    echo Invalid choice. Exiting...
    pause
    exit /b
)

:: Debugging: Print the full path to verify
echo Full path to the setting folder: %baseFolder%\%settingFolder%

:: Check if the folder exists
if not exist "%baseFolder%\%settingFolder%" (
    echo ERROR: The folder "%baseFolder%\%settingFolder%" was not found!
    pause
    exit /b
)

:: Print the path being used for confirmation
echo Applying %settingFolder%...
echo Copying from: %baseFolder%\%settingFolder%

:: Loop through each Steam userdata folder and copy the selected setting
for /D %%a in ("C:\\Program Files (x86)\\Steam\\userdata\\*.*") do (
    xcopy /b /v /y "%baseFolder%\%settingFolder%" "%%a\\" /s /e >nul
    echo Settings applied to: %%a
)

pause
