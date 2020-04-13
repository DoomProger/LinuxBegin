#!/bin/bash -x

files=$(ls -p | grep -v /)
#dirs=$(ls -d */)

for i in $files
 do
   userdir=$(ls -ld $i | awk '{print $3}')
   if [ -d $userdir ]
     then
       mv $i $userdir
   
     else
       mkdir $userdir
       mv $i $userdir
   fi
done
