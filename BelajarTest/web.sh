grep "AS" ID | cut -d">" -f2,3 | sed 's/""/0/g' | sed 's/[</a>"{}%]//g' | sed 's/]//g' | sed 's/v://g' | sed 's/f://g' | sed 's/0.00/0/g' | awk -F',' 'BEGIN {print "ASN; ASN Name; IPv6 Capable; IPv6 Preferred; Samples"} {printf("%s %s %.2f %.2f %.2f\n",$1,$2,$3,$4,$5) }' | sort > output.csv

