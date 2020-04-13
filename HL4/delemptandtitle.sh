#!/bin/bash -x

if [ -n "$1" ]
then
echo file is $1
echo "before change"
cat $1
echo -----------------------
sed -i '/^\s*$/d' $1 
cat $1 | tr [:lower:] [:upper:] >$1
echo ------------------------
cat $1
else
echo "No parameters found."
fi


