#!/bin/bash

var1=10
var2=20
var3=siva

echo $var1 + $var2 #10 + 20
echo "$var1 + $var2" #10 + 20
echo $(($var1 + $var2)) #30
echo $(($var1 + $var2 + $var3)) #30, here var3 is a string so shell willl take sting value as 0
echo $(($var1 * $var2 * $var3)) #0
declare -i count=5 #soecifically we are declaring it as integer
count=count+1
echo $count


FRUITS=("Apple" "Banana" "Pappaya") # This is called as array
echo "All fruits: ${FRUITS[@]}"
echo "First fruit: ${FRUITS[1]}"

name="Sivakumar Reddy M"

echo "${name}ettukuru"