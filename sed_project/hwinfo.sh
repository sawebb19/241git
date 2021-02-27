clear
lscpu | sed -nE 's/[ ]+/ /g;/^CPU\(s\):[ 0-9]*/p'
echo "=======
Memory:
======="
echo "     total              used                free                 shared              buff/cache          available"
free -h | sed -nE 's/Gi/ Gigabytes/g;s/Mi/ Megabytes/g;s/[ ]+/ /;2p'
echo ""
echo "Disks:
======"
df -h | sed -nE '/.*[ ]+[0-9]*\.?[0-9]?T/p'
echo "
Date:
====="
date | sed -nE 's/Sun /Sunday,#/;s/Mon /Monday,#/;s/Tue /Tuesday,#/;s/Wed /Wednesday,#/;s/Thu /Thursday,#/;s/Fri /Friday,#/;s/Sat /Saturday,#/;s/ Jan /#January#/;s/ Feb /#February#/;s/ Mar /#March#/;s/ Apr /#April#/;s/ Jun /#June#/;s/ Jul /#July#/;s/ Aug /#August#/;s/ Sep /#September#/;s/ Oct /#October#/;s/ Nov /#November#/;s/ Dec /#December#/;s/ /./;s/#/ /g;s/AM/a.m./;s/EST/Eastern Standard/;p'
