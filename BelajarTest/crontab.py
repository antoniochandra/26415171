#!/usr/bin/bash
wget www.elevenia.co.id/prd-apple-iphone-7-plus-black-128gb-garansi-6242166
harga=`grep "price" prd-apple-iphone-7-plus-black-128gb-garansi-6242166 | sed s/[^0-9]//g | awk 'NR==4 {print $1}'`

if [ $harga < 15000000 ]
then
 echo "SUDAH TURUN" | mail -s "Penurunan Iphone 7" m26415171@john.petra.ac.id
fi
