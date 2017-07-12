ECHO OFF

:: Collect # of parallel script calls from user (if none specified, assume 1)
IF "%1" == "" (
	SET NUM_OF_RUNS=1
) ELSE (
	SET NUM_OF_RUNS=%1
)


:: Clears the temp folder for each run
CD ./temp
DEL *.txt
CD ..


:: Loop to launch all calls at the same time (async)
ECHO ~ ~ ~
FOR /L %%X IN (1,1,%NUM_OF_RUNS%) DO (
	ECHO Call Number: %%X, Started at %date% %time%
	START "" log.bat %%X
)

:: Prompt User to check the temp folder or run another bat file
ECHO ~ ~ ~
ECHO Check the temp folder or run results.bat to see results.

PAUSE