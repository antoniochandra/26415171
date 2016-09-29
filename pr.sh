awk -F "," 'NR>1{a[$1]=$2;b[$1]=$3;c[$1]=$4;d[$1]=$5;e[$1]=$6;f[$1]=$7;g[$1]=$8;t=$1}BEGIN{printf"Tahun,HEC,GDP,HFCE,PLNHC,TNH,GDP,HFCE\n"} END{for (i in a)if(i!=t)printf"%d-%d,%d,%d,%d,%d,%d,%d,%d\n",i+1,i,a[i+1]-a[i],b[i+1]-b[i],c[i+1]-c[i],d[i+1]-d[i],e[i+1]-e[i],f[i+1]-f[i],g[i+1]-g[i]}' data.csv | sort -t'-' -nk1 > output_delta_awk.csv

