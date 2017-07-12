# Collect # of parallel script calls from user (if none specified, assume 1)
if (!$args[0]) {
    $NUM_OF_RUNS = 1
} else {
   $NUM_OF_RUNS = $args[0] 
}



# Clears the temp folder for each run
CD ./temp
DEL *.txt
CD ..


# Loop to launch all calls at the same time (asnyc)
Write-Host "~ ~ ~"
for ($i=1; $i -le $NUM_OF_RUNS; $i++) {
    $timestamp = Get-Date
    Start-Process Powershell.exe -Argumentlist "-file .\log.ps1 $i"
    Write-Host "Call Number: $i, Started at $timestamp"
}

# Prompt User to check the temp folder or run another powershell script
Write-Host "~ ~ ~"
Write-Host "Check the temp folder or run .\results.ps1 to see results."
Write-Host "~ ~ ~"