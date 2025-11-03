# Exercise 1:

# Write a shell script that exit on error and displays commands as they will execute, including all expansions and substitutions. 
# Use 3 ls commands in your script. 
# Make the first one succeed, the second one fail, and the third one succeed. 
# If you are using the proper options, the third ls command will not be executed.

#!/bin/bash

# set -e: Exit immediately if a command exits with a non-zero status.
# This ensures that the script stops after the first failure.
set -e

# set -x: Print commands and their arguments as they are executed, 
# including all expansions and substitutions, prefixed by a '+ '.
set -x

echo "--- Starting Script Execution ---"

# Command 1:
ls -l

# Command 2: Fails (This directory should not exist on any standard system)
# Since 'set -e' is active, the script will terminate here.
ls /nonexistent-directory-to-force-error-12345

# Command 3: Succeeds, but will never be executed
# (You will see the '+' prefix for the commands above, but not for this one)
ls

echo "--- Script finished successfully (This should not print) ---"








