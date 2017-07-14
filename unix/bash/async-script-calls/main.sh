#!/bin/bash


# Collect # of parallel script calls from user (if none specified, assume 1)
if [ $# -eq 0 ]; then
  NUM_OF_RUNS=1
else 
  NUM_OF_RUNS=$1
fi


# Clears the temp folder for each run
cd ./temp
rm *.txt
cd ..


# Loop to launch all calls at the same time (async)
echo "~ ~ ~"
for (( i=1; i <= $NUM_OF_RUNS; ++i ))
do
    clock=$(date)
    echo "Call Number: $i, Started at $clock"
    bash ./log.sh $i &
done

# Prompt User to check the temp folder or run another bat file
echo "~ ~ ~"
echo "Check the temp folder or run results.bat to see results."
