@echo off

SET PROJECT_ROOT=%~dp0%..
SET ENGINE_ROOT=G:\EpicGamesLauncher\UE_5.0\Engine
SET UPLUGIN=%PROJECT_ROOT%\Plugins\EnhancedWidgetNavigation\EnhancedWidgetNavigation.uplugin
SET ARCHIVE=%PROJECT_ROOT%\Archive\EnhancedWidgetNavigation\UE_5.0

::
START %ENGINE_ROOT%\Build\BatchFiles\RunUAT ^
	BuildPlugin -plugin=%UPLUGIN% -package=%ARCHIVE% -rocket
