#!/bin/bash
awk -F"|" '{if($3=="S") s++;if($3=="S") total=total + $2;if($3=="TS") ts++;if($3=="TS") ttotal=ttotal + $2;if($3=="KS") ks++;if($3=="KS") ktotal=ktotal + $2} ; END {printf("Kategori    Jumlah  Total   Rata\nS \t %d \t %d \t %d\nTS \t %d \t %d \t %d\nKS \t %d \t %d \t %d\n" , s,total,total/s, ts,ttotal,ttotal/ts, ks,ktotal,ktotal/ks)}' < makanan.csv > output.txt
