echo "Jumlah input = "
read n

rm data.txt

for ((number = 0;number < n ;number++))
{
echo "masukkan nrp= "
read nrp
echo "masukkan nama= "
read nama
echo "Masukkan address= "
read address
echo "Masukkan telp= "
read telp

echo "$nrp|$nama|$address|$telp" >> data.txt

}

awk -F "|" '{nrp[$1]=$1;nama[$1]=$2;add[$1]=$3;telp[$1]=$4} END{for (i in nrp) printf"%s|%s|%s|%s\n",nama[i],nrp[i],telp[i],add[i]}' data.txt > data2.txt
awk -F "|" '{nama[$1]=$1;nrp[$1]=$2;telp[$1]=$3;add[$1]=$4} END{for (i in nama) if (add[i]!="siwalankerto") printf"%s|%s|%s|%s\n",nama[i],nrp[i],telp[i],add[i]}' data2.txt > data3.txt
