#kiem tra nguyen to

echo -n " nhap n: "
read n

#-le: nho hon hoac bang
if  [ $n -le 1 ]; then
echo "$n khong phai la so nguyen to"
exit 0
fi

for ((i=2; i*i<=n;i++))
do
if [ $((n%i)) -eq 0 ]; then
echo "$n khong phai la so nguyen to"
exit 0
fi
done

echo "$n la so nguyen to"