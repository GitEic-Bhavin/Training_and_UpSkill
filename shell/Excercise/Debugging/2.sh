# Exercise 2:

# Modify the previous exercise so that script continues, even if an error occurs. 
# This time all three ls commands will execute.

#!/bin/bash

# set -e: Exit immediately if a command exits with a non-zero status.
# This ensures that the script stops after the first failure.
# set -e By disabling this -e , script will execute even error occurs.

# set -x: Print commands and their arguments as they are executed, 
# including all expansions and substitutions, prefixed by a '+ '.
set -x

echo "--- Starting Script Execution ---"

# Command 1:
ls -l

# Command 2: Fails (This directory should not exist on any standard system)
# Since 'set -e' is active, the script will terminate here.
ls -l /nonexistent-directory-to-force-error-12345

# Command 3: Succeeds, but will never be executed
# (You will see the '+' prefix for the commands above, but not for this one)
ls

echo "--- Script finished successfully (This should not print) ---"

