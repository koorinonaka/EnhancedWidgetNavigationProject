@echo off

SET PROJECT_NAME=EWNProject

SET PROJECT_ROOT=%~dp0%..
SET ENGINE_ROOT=G:\EpicGamesLauncher\UE_5.0\Engine
SET GAME_UPROJECT=%PROJECT_ROOT%\%PROJECT_NAME%.uproject

:: コマンドラインから実行する場合は引数で指定可能
SET PLATFORM=%~1
SET TARGET=%~2

:: Platformを入力させる
:INPUT_PLATFORM
IF /I NOT "%PLATFORM%"=="" GOTO :INPUT_TARGET
ECHO Win64,Linux,Android...
SET /P PLATFORM="choose platform: "
IF "%PLATFORM%"=="" GOTO :INPUT_PLATFORM

:: Targetを入力させる
:INPUT_TARGET
IF /I NOT "%TARGET%"=="" GOTO :THROUGH_INPUT
ECHO Development,Test...
SET /P TARGET="choose target: "
IF "%TARGET%"=="" GOTO :INPUT_TARGET

::
:THROUGH_INPUT

:: クック処理
START %ENGINE_ROOT%\Build\BatchFiles\RunUAT ^
	BuildCookRun -project=%GAME_UPROJECT% ^
	-noP4 -build -cook -iterate -compressed -stage -package -utf8output -compile ^
	-targetplatform=%PLATFORM% -clientconfig=%TARGET%
