@echo off

SET UPLUGIN=%PROJECT_ROOT%\Plugins\EnhancedWidgetNavigation\EnhancedWidgetNavigation.uplugin
SET ARCHIVE=%PROJECT_ROOT%\Archive\%ENGINE_VERSION%\EnhancedWidgetNavigation

::
CALL G:\EpicGamesLauncher\%ENGINE_VERSION%\Engine\Build\BatchFiles\RunUAT ^
	BuildPlugin -plugin=%UPLUGIN% -package=%ARCHIVE% -rocket

:: delete unused file
RD /q /s %ARCHIVE%\Binaries
RD /q /s %ARCHIVE%\Intermediate
DEL %ARCHIVE%\Source\.clang-format
