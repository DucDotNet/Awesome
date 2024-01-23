@ECHO off
cls

ECHO Deleting all /node_modules, /.angular, /dist and /build folders...
ECHO.

FOR /d /r . %%d in (node_modules,.angular,dist) DO (
	IF EXIST "%%d" (		 	 
		ECHO.Deleting: %%d
		ECHO....
		REM %%d: path of folder
		REM rd: delete folder; /s: delete all sub-folders; /q: not need confirm
		rd /s/q "%%d"
	)
)

ECHO.
ECHO.Folders /node_modules, /.angular and /dist folders have been successfully deleted. Press any key to exit.
pause > nul