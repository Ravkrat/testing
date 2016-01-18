@ECHO off
::increment the loop-check var
set /a checkLoop+=1
echo checkLoop=%checkLoop%
pause
goto :initLoopCheck

:initLoopCheck
echo in rngInputTest:initLoopCheck
set logicI=1
set logicII=2
set logicIII=3
IF %checkLoop%==%logicI% goto :rngInputTestInitVarSet
IF %checkLoop%==%logicII% goto :logic
IF %checkLoop%==%logicIII% goto:EOF



:rngInputTestInitVarSet
echo in rngInputTest:rngInputTestInitVarSet
set rngCaveI=0
set rngCaveII=0
set minCaveI=0
set maxCaveI=50
set minCaveII=0
set maxCaveII=50
goto :logic


:logic
echo in rngInputTest:logic
IF %checkLoop%==%logicI% goto :rngInputTestPass
IF %checkLoop%==%logicII% goto :rngInputTestDisplay
IF %checkLoop%==%logicIII% goto :end
::goto :rngInputTestPass

:rngInputTestPass
echo in rngInputTest:rngInputeTestPass
set checkLoop+=1
call rngCompare.bat %minCaveI% %minCaveII% %maxCaveI% %maxCaveII%
goto :rngInputTestDisplay

:rngInputTestDisplay
IF %checkLoop%==%logicIII% goto :end
echo in rngInputTest:rngInputTestDisplay
set /a checkLoop+=1
set result=%~1
set displayResult=%result%
echo checkLoop:%CheckLoop%
echo result:%displayResult%
pause



:end