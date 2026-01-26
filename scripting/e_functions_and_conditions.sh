#!/usr/bin/bash

# basic age choose
declare -A age;

age[sk]=800;
age[nn]=30;
age[sr]=500;
age[kj]=20;
age[sa]=3000;

whoIs() {
whoseAge=$1;

if [ "$whoseAge" -ge 3000 ]; then
echo "> 3000";
elif [ "$whoseAge" -ge 800 ]; then
echo "> 800";
elif [ "$whoseAge" -ge 500 ]; then
echo "> 500";
elif [ "$whoseAge" -ge 30 ]; then
echo "> 30";
else
echo "rest";
fi

}
result=$(whoIs ${age[sk]});

echo "the result is $result";
echo "remember to add spaces between things inside and the square brackets"