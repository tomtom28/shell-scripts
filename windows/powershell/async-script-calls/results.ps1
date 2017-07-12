# This script is ran after the main.ps1 to aggregate the results in the temp folder

Write-Host "Your Result(s) are below:"

$findtext="Your random output is "
$findfile="*.txt"

CD ./temp
Get-ChildItem . -Filter $findfile -Recurse | Select-String $findtext
CD ..