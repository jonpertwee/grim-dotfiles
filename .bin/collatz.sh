#!/bin/sh
x="$1"
y="0"
z="$x"
echo "Running Collatz Conjecture Test for Integer: $x"
while [ $x -ne 1 ]
do
  if [ $((x%2)) -eq 0 ]
    then
      x=$(( x / 2 ))
    else 
      x=$((3*x+1))
   fi
   y=$((y+1))
   echo $x
   sleep 0.1
done
echo "Starting Integer: $z"
echo "Final Result: $x"
echo "Iterations Required: $y"
