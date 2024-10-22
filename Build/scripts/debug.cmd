:: Get the configuration variables
:: Note that the call contains the folder "build-helpers"
:: because the scripts are executed in the context of the root folder
call scripts\config.cmd

:: Just tell the output what's happening
@echo ----- Will copy dlls to %targetpath% and assets to theme %themename% (automated in /build-helpers/debug.cmd)

:: These are calculated automatically based on your targetpath
set targetpathdll=%targetpath%\bin\Debug\netcoreapp3.1\
set targetpathassets=%targetpath%\wwwroot\Themes\%themename%\dist\

:: Copy the DLLs to your dev/testing environment
set source=..\Theme
XCOPY "%source%\bin\Debug\netstandard2.1\%dllname%.dll" "%targetpathdll%" /Y
XCOPY "%source%\bin\Debug\netstandard2.1\%dllname%.pdb" "%targetpathdll%" /Y

:: Copy any assets from /dist/ to the target
set distSource=..\Src\dist
XCOPY "%distSource%\*" "%targetpathassets%" /Y /S /I

:: Inform we're done
@echo ----- Done!