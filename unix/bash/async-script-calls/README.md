These bash scripts can be used to run the same code in multiple command line sessions.
It makes multiple calls to the index.js file in the root directory of this repo.


Call it from the command line with `./main.sh [# async calls]`. 
Note that you may need to adjust your security settings using the notes below...

  - Remove Security Permissions for the scripts
  `chmod +x main.sh && chmod +x results.sh && chmod +x log.sh && chmod +x nodeJS.sh`


Setup on your own machine...
  1. Ensure you have NodeJS installed.
  2. Ensure you are using a *NIX system (i.e. MacOS or Linux)
 

Run on your own machine...
  1. Run main.sh from the bash terminal, it will launch multiple command line windows. Please wait for all of them to finish running. The windows will close automatically. The only window left open will say "Check the temp folder or run ./results.sh to see results." You can press any key to close this window.
  2. After the successful completion of the main.sh file, run the "results.sh" script which will return all the random number outputs to the command line.