#!/bin/bash
declare -i pass
declare -i fail
declare -i total
declare -i fr

pass=0
fail=0
ft=0
# total Trials
total=$1
# Command
cmd=$2

echo "Total Trials : $total "

for i in  $(seq 1 $total)
do 
    
    echo "Trial : $i "
    # Run Command To Test    
    $cmd
    if [ $? -eq 0 ] 
    then
        pass=${pass}+1
    else
        fail=${fail}+1
    fi 
    
done
echo "Passed : $pass "
echo "Failed : $fail"
fr=100*${fail}/${total}

echo "Fail Rate : $fr"

run 
exit

