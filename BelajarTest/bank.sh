#!/bin/bash

beli=`curl -s  http://www.bankmandiri.co.id/resource/kurs.asp | grep USD -A1 | cut -d">" -f2 | cut -d"<" -f1|xargs|cut -d" " -f2`
jual=`curl -s  http://www.bankmandiri.co.id/resource/kurs.asp | grep USD -A4 | cut -d">" -f2 | cut -d"<" -f1 |xargs|cut -d" " -f4`


echo "Kurs Beli:"$beli
echo "Kurs Jual:"$jual
