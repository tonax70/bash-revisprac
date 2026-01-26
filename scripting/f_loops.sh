#!/usr/bin/bash

echo "press any key to continue: ";
read years;
echo "For loop";

for i in {0..800}; do 
echo "$i years passed";
done


echo "While loop";
count=1
while [ $count -le 5 ]; do
  echo "Count is $count"
  ((count++))
done


