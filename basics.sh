#!/bin/bash

# Print variables
VAR1="jai"
echo $VAR1

# read variables from user
echo "enter you name"
read NAME
echo $NAME

# access from command line
echo $1

# conditionals
if [ $NAME == "venkat" ]
then
  echo "your name is venkat"
else
  echo "Your name is something else"
fi

A=3
B=3
if [ $A -ge $B ]
then
  echo "A is greater than B"
else
  echo "A is not greater than B"
fi

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

FILE="test.txt"
if [ -r $FILE ]
then
  echo "$FILE, is readable"
else
  echo "$FILE, is not readable"
fi

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

# case
NUM=3

case $NUM in
  1)
      echo "The num is one"
      ;;
  2)
      echo "The num is two"
      ;;
  *)
      echo "The num is not one or two"
      ;;
  esac


NUM2=1
case $NUM2 in
  1)
      echo "NUM2 is one"
      ;;
  2)
      echo "NUM2 is two"
      ;;
  *)
      echo "NUM2 is not one or two"
esac

# For loops
NAMES="I am Venkatesh"
for NAME in $NAMES
  do
    echo $NAME
done

FILES=$(ls *.txt)
COUNTER=100
for FILE in $FILES
  do
    FILE_NAME=$(echo $FILE | cut -d'.' -f1)
    mv "$FILE" "new_${COUNTER}.txt"
    ((COUNTER--))
done

# While loop
LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "sample.t"

# Functions
function hello(){
  echo "Hello world"
}

hello

function hello_with_params(){
  echo "hello $1 and his age is $2"
}

hello_with_params "venkat" "16"
