#!/bin/bash
echo "*****************BEGIN REPORT*********************************************" | tee -a Report.txt
echo "**************************************************************************" | tee -a Report.txt
pun=$(date +'%b %-d %T')  #this is
echo "$pun" | tee -a Report.txt
tm=$(date +"%d")
rtm=$(expr $tm - $2)
echo'' | tee -a Report.txt
awk -v "v1=$pun" '$0 >= "Dec '$rtm' 00:00:01" && $0 <= "'v1'"' $1 >> space.txt

Errors=$(grep -o Errors space.txt | wc -l)
ERRORS=$(grep -o ERRORS space.txt | wc -l)
errors=$(grep -o errors space.txt | wc -l)
Error=$(grep -o Error space.txt | wc -l)
error=$(grep -o error space.txt | wc -l)
err=$(grep -o err space.txt | wc -l)
Err=$(grep -o Err space.txt | wc -l)
EE=$(grep -o EE space.txt | wc -l)
ee=$(grep -o ee space.txt | wc -l)
Critical=$(grep -o Critical space.txt | wc -l)
Fatal=$(grep -o Fatal space.txt | wc -l)

echo "The amount of Errors found within the last "$2" days is: "$Errors | tee -a Report.txt
echo "The amount of ERRORS found within the last "$2" days is: "$ERRORS | tee -a Report.txt
echo "The amount of errors found within the last "$2" days is: "$errors | tee -a Report.txt
echo'' | tee -a Report.txt
echo "The amount of Error found within the last "$2" days is:  "$Error  | tee -a Report.txt
echo "The amount of error found within the last "$2" days is:  "$error  | tee -a Report.txt
echo'' | tee -a Report.txt
echo "The amount of Err found within the last "$2" days is:  "$Err | tee -a Report.txt
echo "The amount of err found within the last "$2" days is:  "$err | tee -a Report.txt
e
echo "The amount of ee found within the last "$2" days is:  "$ee | tee -a Report.txt
echo''
echo "The amount of Critical found within the last "$2" days is:  "$Critical | tee -a Report.txt
echo "The amount of Fatal found within the last "$2" days is:  "$Fatal | tee -a Report.txt

echo'' | tee -a Report.txt
rm space.txt
echo "**************************************************************************"  | tee -a Report.txt
echo "******************END REPORT**********************************************"  | tee -a Report.txt
