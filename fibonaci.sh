read -p "Nhập số: " n
a=0
b=1
found=0

while [ $a -le $n ]; do
    [ $a -eq $n ] && found=1 && break
    c=$((a+b))
    a=$b
    b=$c
done


if [ $found -eq 1 ]; then
echo "La so fibonaci "
else
echo "khong phai la so fibonaci"
fi