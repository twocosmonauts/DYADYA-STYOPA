
FOR /F "skip=2 tokens=2,*" %%A IN ('reg.exe query "HKLM\SOFTWARE\EpicGames\Unreal Engine\5.3" /v "InstalledDirectory"') DO set "DFMT=%%B"
ECHO New variable DFMT = %DFMT%

call "%DFMT%\Engine\Binaries\DotNET\UnrealBuildTool.exe" -projectfiles -project=%0\..\DyadyaStyopa.uproject -game -rocket -progress

call "%DFMT%\Engine\Build\BatchFiles\Build.bat" "CharacterInteractionEditor" Win64 Development -WarningsAsErrors %0\..\DyadyaStyopa.uproject

pause
