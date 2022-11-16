@echo off

SET PROJECT_ROOT=%~dp0%..

SET ENGINE_VERSION=UE_5.0
SET UPLUGIN=%PROJECT_ROOT%\Plugins\EnhancedWidgetNavigation\EnhancedWidgetNavigation.uplugin
SET ARCHIVE=%PROJECT_ROOT%\Archive\%ENGINE_VERSION%\EnhancedWidgetNavigation

::
CALL G:\EpicGamesLauncher\%ENGINE_VERSION%\Engine\Build\BatchFiles\RunUAT ^
	BuildPlugin -plugin=%UPLUGIN% -package=%ARCHIVE% -rocket

:: delete unused file
RD /q /s %ARCHIVE%\Binaries
RD /q /s %ARCHIVE%\Intermediate
DEL %ARCHIVE%\README.md
DEL %ARCHIVE%\Source\.clang-format
