@ECHO off
set /a checkLoop+=0
goto :initLoopCheck

:initLoopCheck
set logicI=1
set logicII=2
IF %checkLoop%==%logicI% goto :rngInputTestInitVarSet
IF %checkLoop%==%logicII% goto :logic


:rngInputTestInitVarSet
set rngCaveI=0
set rngCaveII=0
set minCaveI=0
set maxCaveI=100
set minCaveII=0
set maxCaveII=100
goto :logic


:rngInputTestPass
set checkLoop=2
call rngCompare.bat %minCaveI% %minCaveII% %maxCaveI% %maxCaveII%
goto :rngInputTestDisplay



:logic
IF %checkLoop%==%logicI% goto :rngInputTestPass
IF %checkLoop%==%logicII% goto :rngInputTestDisplay
goto :rngInputTestPass

:rngInputTestDisplay
set result=%~1

echo result:%result%
pause
exit /b

