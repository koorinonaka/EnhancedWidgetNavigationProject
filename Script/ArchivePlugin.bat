@echo off

SET PROJECT_ROOT=%~dp0%..

SET ENGINE_VERSION=UE_5.0
CALL %~dp0%_BuildPlugin.bat

SET ENGINE_VERSION=UE_5.1
CALL %~dp0%_BuildPlugin.bat

SET ENGINE_VERSION=UE_5.2
CALL %~dp0%_BuildPlugin.bat

SET ENGINE_VERSION=UE_5.3
CALL %~dp0%_BuildPlugin.bat
