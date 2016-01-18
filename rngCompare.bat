@ECHO off
goto :rngCompareInitVarSet

::initial variable set
:rngCompareInitVarSet
set MaxI=0
set MaxII=0
set MinI=0
set MinII=0
set result=0
goto :afterPass

::after rngInputTestPass
:afterPass
set MinI=%~1
set MinII=%~2
set MaxI=%~3
set MaxII=%~4
goto :randomGen


::generate two random numbers
:randomGen
set /a rngI=(%RANDOM%*%MaxI%/32768)+%MinI%
set /a rngII=(%RANDOM%*%MaxII%/32768)+%MinII%
goto :compareRNG

::compare the two random numbers
:compareRNG
::set compare=
set /a compare=%rngI%+%rngII%
goto :passToRNGInputTest

::pass the compare result back to rngInputTest
:passToRNGInputTest
call rngInputTest.bat %compare% 


