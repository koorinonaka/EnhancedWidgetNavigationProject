@echo off

CALL %~dp0%_Env.bat

SET UPLUGIN=%PROJECT_ROOT%\Plugins\EnhancedWidgetNavigation\EnhancedWidgetNavigation.uplugin
SET ARCHIVE=%PROJECT_ROOT%\Archive\UE_5.0\EnhancedWidgetNavigation

::
CALL %ENGINE_ROOT%\Build\BatchFiles\RunUAT ^
	BuildPlugin -plugin=%UPLUGIN% -package=%ARCHIVE% -rocket

:: delete unused file
RD /q /s %ARCHIVE%\Binaries
RD /q /s %ARCHIVE%\Intermediate
DEL %ARCHIVE%\README.md
DEL %ARCHIVE%\Source\.clang-format
