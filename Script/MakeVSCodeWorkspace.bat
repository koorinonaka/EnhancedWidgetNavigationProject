@echo off

CALL %~dp0%_Env.bat

%ENGINE_ROOT%\Binaries\DotNET\UnrealBuildTool\UnrealBuildTool.exe ^
	-projectfiles -project="%GAME_UPROJECT%" -game -rocket -progress -engine -VSCode
