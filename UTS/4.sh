echo "Masukkan Uang = "
read input
echo "Masukkan bulan = "
read bulan
echo "Masukkan bunga = "
read bunga

for((number =1;number<=$bulan;number++))
{
echo "Bulan ke $number: "
if (($number > 1))
then

	if (($number%12 == 0))
	then
	let "bunga = $bunga + 5"
	echo "Bulan kelipatan 12"
	fi
let "input =$input +(($input*$bunga)/100)"
if(($RANDOM % 5 == 1))
then
let "input = $input * (($RANDOM % 51 + 150)/100)"
echo "20% chance"
fi
fi
if(($RANDOM %100 < 5))
then
let "input = 100"
echo "tercuri"
fi
echo "$input"
}

