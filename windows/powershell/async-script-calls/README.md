These powershell scripts can be used to run the same code in multiple command line sessions.
It makes multiple calls to the index.js file in the root directory of this repo.

Call it from the command line with `main.ps1 [# async calls]`. 
Note that you may need to adjust your security settings using the notes below...

   - Remove Security Permissions so you can run a (local) script:
		`Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned`

   - Remove Security Permissions so you can run (any) script (not recommended):
		`Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted`

   - Add back Security Permissions after you are done:
		`Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Undefined`


Setup on your own machine...
  1. Ensure you have NodeJS installed.
  2. Search for "Windows Powershell" on your computer. It comes pre-installed on all modern windows machines.
 
Run on your own machine...
  1. Run main.ps1 from powershell, it will launch multiple command line windows. Please wait for all of them to finish running. The windows will close automatically. The only window left open will say "Check the temp folder or run ./results.ps1 to see results." You can press any key to close this window.
  2. After the successful completion of the main.ps1 file, run the "results.ps1" script which will return all the random number outputs to the command line.
 