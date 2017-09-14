#! /bin/bash
if [ "$1" = "" ]
then
 echo "Wrong use of script. Pass the pattern as an argument."
fi
sample=$1 # All "." could be any character.
while read p
do
 if [[ $p =~ ^$sample$ ]]
 then
 echo $p
 fi
done </usr/share/dict/words
