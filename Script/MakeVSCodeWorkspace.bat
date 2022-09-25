@echo off

SET ENGINE_ROOT=G:\EpicGamesLauncher\UE_5.0\Engine
SET GAME_UPROJECT=%~dp0%..\EWNProject.uproject

%ENGINE_ROOT%\Binaries\DotNET\UnrealBuildTool\UnrealBuildTool.exe ^
	-projectfiles -project="%GAME_UPROJECT%" -game -rocket -progress -engine -VSCode
