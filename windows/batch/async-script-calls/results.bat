:: This script is ran after the main.bat to aggregate the results in the temp folder
ECHO OFF

ECHO Your Result(s) are below:

SET findtext="Your random output is "
SET findfile="*.txt"

CD ./temp
FINDSTR /C:%findtext% %findfile%
CD ..

PAUSE