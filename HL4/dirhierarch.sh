#!/bin/bash -x

for i in {2010..2017}
 do
   mkdir $i
    
    for j in {01..12}
     do
      mkdir "$i/$j"
      cd "$i/$j"
       
        for k in {001..010}
         do
	  echo $(pwd)
          echo "File N $i"_"$j-$k" >$k.txt
        done
      
      pwd
      cd ..
      pwd
      cd ..
    done
   
  cd..
done
