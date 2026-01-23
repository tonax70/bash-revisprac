#!/bin/bash

echo "Bash datatype:\n";
echo "1. String";

greeting="Hello";
name="Tonax";

full="$greeting, $name";

echo $full;

echo "2. Number";
num1=5;
num2=10;

sum=$((num1+num2));
diff=$((num1-num2));
prod=$((num1*num2));
quot=$((num1/num2));

echo "Sum | Dif | Prod | Quot |";
echo "$sum  |$diff   |$prod    |$quot     |";

echo "3. Array";

# note that bash array have no comma but spaces between them
names=("sks" "nkn" "shr" "khj" "sra");

for name in "${names[@]}"; do 
echo $name;
done

echo "4. Associative Array";

declare -A ages;

ages[sks]="800";
ages[nkn]="30";
ages[shr]="500";
ages[khj]="20";
ages[sra]="3000";
ages[what]="67";

unset ages[what];

for name in "${!ages[@]}"; do 
age=${ages[$name]};
echo "$name is $age years old!";
done