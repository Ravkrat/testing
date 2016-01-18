@ECHO off
::increment the loop-check var
set /a checkLoop+=1
goto :initLoopCheck

:initLoopCheck
set logicI=1
set logicII=2
set logicIII=3
IF %checkLoop%==%logicI% goto :rngInputTestInitVarSet
IF %checkLoop%==%logicII% goto :logic
IF %checkLoop%==%logicIII% goto:EOF



:rngInputTestInitVarSet
set minCharCityStart=0
set maxCharCityStart=50
set minAlignmentCityStart=0
set maxAlignmentCityStart=50
goto :logic


:logic
IF %checkLoop%==%logicI% goto :rngInputTestPass
IF %checkLoop%==%logicII% goto :rngInputTestDisplay
IF %checkLoop%==%logicIII% goto :end
::goto :rngInputTestPass

:rngInputTestPass
set checkLoop+=1
call rngCompare.bat %minCharCityStart% %minAlignmentCityStart% %maxCharCityStart% %maxAlignmentCityStart%
goto :rngInputTestDisplay

:rngInputTestDisplay
IF %checkLoop%==%logicIII% goto :end
set /a checkLoop+=1
set result=%~1
::set displayResult=%result%
echo result:%result%
pause



:end