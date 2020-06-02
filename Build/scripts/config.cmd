:: This is just a configuration file for the Batch-automation in this theme. 
:: Just make your changes below to reconfigure how things are built

:: Disable too much output
@echo off

:: Seed values
set creator=ToSic
set themePartialName=Bootstrap4Pro

:: The root target path - adjust to your testing- & dev-environment
set targetroot=..\..\oqtane.framework
set themename=%creator%.Oqt.Themes.%themePartialName%

:: Important, the dll name must contain the full word Oqtane as of now - WIP, see https://azing.org/oqtane/r/KXsLEVkZ
set dllname=%creator%.Oqtane.Themes.%themePartialName%

:: Nuspec file, for release cycle
set nugetfile=%dllname%.nuspec

:: Auto-calculated values (derived from the settings above)
set targetpath=%targetroot%\Oqtane.Server
