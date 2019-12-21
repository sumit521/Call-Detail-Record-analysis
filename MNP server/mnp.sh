#!/bin/sh
#FIRST COLUMN MUST BE MOBILE NUMBERS
#DELETE the files detail.txt and sorted.txt
: '
#code to generate random mnp server data
readarray num < data.txt
lsa=(AP WB BR RJ GJ JK PB NE OD TN KR MP KTK DL UPE UPW HP HR)
tsp=(Jio Voda BSNL Airtel)
c=$(cat data.txt|wc -l)
((c--))
while(($c >= 0))
 do
  
  x=`echo "${num[$c]}" | tr -d '\n'`
  echo "$x|${lsa[$RANDOM % ${#c[@]}]}|${tsp[$RANDOM % ${#c[@]}]}" >>final.txt
  
  ((c--))
 done
'
readarray targets < targets.txt
for target in ${targets[@]}
do
sed -n  "/^$target/p" mnp.txt >>detail.txt #matches pattern at the starting of line. Remove '^' sign if first column is not numbers
done
lsa=(AP WB BR RJ GJ JK PB NE OD TN KR MP KTK DL UPE UPW HP HR) 
for lsa in ${lsa[@]}
do
sed -n  "/$lsa/p" detail.txt >>sorted.txt
done
