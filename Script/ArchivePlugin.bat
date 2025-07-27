@echo off

SET PROJECT_ROOT=%~dp0%..

SET ENGINE_VERSION=UE_5.4
CALL %~dp0%_BuildPlugin.bat

SET ENGINE_VERSION=UE_5.5
CALL %~dp0%_BuildPlugin.bat

SET ENGINE_VERSION=UE_5.6
CALL %~dp0%_BuildPlugin.bat
