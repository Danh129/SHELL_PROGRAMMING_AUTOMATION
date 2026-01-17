: << OFF
a=$1
b=$2
c=$3
if [ "$a" -eq 0 ]; then
if [ "$b" -eq 0 ]; then
if [ "$c" -eq 0 ]; then
echo "phuong trinh vo sp nghiem"
else
echo "Phuong trinh vo nghiem"
fi
else
x=$(echo "scale=2; -$c/$b" | bc)
echo "Nghiem phuong trinh la x = $x: " 
fi
else
denta=$((b*b-4*a*c))
if [ $denta -lt 0 ]; then
echo "Phuong trinh vo nghiem "
elif [ $denta -eq 0 ]; then
x=$(echo "scale=2; -$b/(2*$a)" | bc)
echo "phuong trinh co nghiem kep x = $x"
else
sqrtD=$(echo "scale=5; sqrt($denta)" | bc)
x1=$(echo "scale=2; (-$b + $sqrtD)/(2*$a)" | bc)
x2=$(echo "scale=2; (-$b - $sqrtD)/(2*$a)" | bc)
echo "Phuong trinh co 2 nghiem phan biet $x1 va $x2 "
fi
fi
OFF

