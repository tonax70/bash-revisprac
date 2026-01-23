#!/bin/bash

echo "Variables in Bash are used to store data that can be used and manipulated throughout your script or command-line session. Bash variables are untyped, meaning they can hold any type of data.";
echo "Variables are declared by simply assigning a value to a name. There should be no spaces around the equal sign:
variable_name=value
To access the value of a variable, prefix it with a dollar sign";

name='Tonax';
age=100;

echo "Hello, $name! - You are $age years old!";


echo "===============Environment Variable==============================";
echo "Your PATH is $PATH";
echo "";
echo "as you can see, the line looks very hard to read so we have to replace the colon with line break character \n";
echo "We will use the sed command to do the job"
echo "$PATH" | sed 's/:/\n/g'
echo "s is the substitute command.
: is the pattern to search for.
\n is the replacement (newline).
g ensures all occurrences on the line are replaced (global). "


# Define a local variable in a function
my_function() {
  local local_var="I am local"
  echo $local_var
}
my_function;

# Concatenation
greeting="Hello, "
name="World"
echo "$greeting$name"

# Arithmetic
num1=5
num2=10
sum=$((num1+num2))
echo "The sum is $sum"