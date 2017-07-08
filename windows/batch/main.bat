:: Do not display any commands as file runs in Command Line (only show outputs)
@ECHO off 

:: ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ Main Function ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
SETLOCAL

:: Set args to variables
SET arg1=%1
SET /A arg2=%2
SET /A arg3=%3

:: Check if any input was passed
IF "%arg1%"=="" GOTO showHelp

:: Check for invalid/help commands
IF %arg1%==help GOTO showHelp


:: Nested If Statements equate to an "AND" condiiton
IF NOT %arg1%==add IF NOT %arg1%==subtract IF NOT %arg1%==multiply IF NOT %arg1%==divide GOTO showHelp

:: If the above criteria pass, call the math Function
GOTO myMath %arg1%, %arg2%, %arg3%

:: Exit Main Function
EXIT /B 0

ENDLOCAL
:: ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~


:: Function to Show a help menu	
:showHelp 
ECHO ~ ~ ~ HELP MENU ~ ~ ~
ECHO Looks like you need some help. Try to run any of the following...
ECHO "main.bat add 1 2"
ECHO "main.bat subtract 2 1"
ECHO "main.bat multiply 2 3"
ECHO "main.bat divide 5 2"
EXIT /B 0
	
	

:: Function for Various Math Operations
:myMath
ECHO ~ ~ ~ MATH FUNCTION ~ ~ ~

:: Check for the 2 number args
IF "%~2"=="" (
	ECHO ~ ~ ~ INPUT ERROR ~ ~ ~
	ECHO Please pass in first number argument after the word!
) ELSE SET /A num1=%~2

IF "%~3"=="" (
	ECHO ~ ~ ~ INPUT ERROR ~ ~ ~
	ECHO Please pass in second number argument after the word!
) ELSE SET /A num2=%~3

:: Addition
IF "%~1"=="add" (
	
		SET /A ans=%num1%+%num2%
		ECHO %num1% + %num2% = %ans%
	
)

:: Subtraction
IF "%~1"=="subtract" (
	SETLOCAL
		SET /A ans=%~2-%~3
		ECHO %~2 - %~3 = %ans%
	ENDLOCAL
)

:: Multiplication
IF "%~1"=="multiply" (
	SETLOCAL
		SET /A ans=%~2*%~3
		ECHO %~2 * %~3 = %ans%
	ENDLOCAL
)

:: Division
IF "%~1"=="divide" (
	SETLOCAL
		SET /A ans=%~2/%~3
		ECHO %~2 / %~3 = %ans%
	ENDLOCAL
)

EXIT /B 0