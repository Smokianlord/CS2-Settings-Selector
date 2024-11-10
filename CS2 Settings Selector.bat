@echo off
echo Choose a setting to apply:
echo 1. MAIN
echo 2. TRYHARD
echo 3. FARM
echo 4. ARMSRACE
echo 5. SKIN INSPECT

set /p choice=Enter your choice (1/2/3/4/5): 

if %choice%==1 (
    echo Applying MAIN...
    for /D %%a in ("C:\\Program Files (x86)\\Steam\\userdata\\*.*") do xcopy /b/v/y "D:\\Games\\Games Essentials\\CSGO Settings\\SET MAIN" "%%a\\" /sei
) else if %choice%==2 (
    echo Applying TRYHARD...
    for /D %%a in ("C:\\Program Files (x86)\\Steam\\userdata\\*.*") do xcopy /b/v/y "D:\\Games\\Games Essentials\\CSGO Settings\\SET TRYHARD" "%%a\\" /sei
) else if %choice%==3 (
    echo Applying FARM...
    for /D %%a in ("C:\\Program Files (x86)\\Steam\\userdata\\*.*") do xcopy /b/v/y "D:\\Games\\Games Essentials\\CSGO Settings\\SET FARMING" "%%a\\" /sei
) else if %choice%==4 (
    echo Applying ARMSRACE...
    for /D %%a in ("C:\\Program Files (x86)\\Steam\\userdata\\*.*") do xcopy /b/v/y "D:\\Games\\Games Essentials\\CSGO Settings\\SET ARMSRACE" "%%a\\" /sei
) else if %choice%==5 (
    echo Applying SKIN INSPECT...
    for /D %%a in ("C:\\Program Files (x86)\\Steam\\userdata\\*.*") do xcopy /b/v/y "D:\\Games\\Games Essentials\\CSGO Settings\\SET SKIN INSPECT" "%%a\\" /sei
) else (
    echo Invalid choice. Exiting...
)
pause
