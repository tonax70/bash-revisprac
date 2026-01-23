#!/bin/bash
# To create a script, start with the shebang followed by the path to Bash, usually /bin/bash. Make sure your script has execute permissions.

# Declare a variable like js and using the $ sign
# NOTE: the var and the assign equal sign, the data should contains no space otherwise it wont work

myFirstVar="SKS";
# myFirstVar = "SKS"; wont work
# myFirstVar= "SKS"; wont work: empty string

echo "Hello, $myFirstVar";