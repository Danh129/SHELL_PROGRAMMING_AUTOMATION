echo -n " nhap so luong phan tu: "
read n

#khai bao mang
declare -a arr

for ((i=0; i<n; i++))
do
echo " nhap phan tu thu $i: "
read arr[$i]
done

#sap xep
for ((i=0; i<n-1;i++))
do
for ((j=0; j<n-i-1;j++))
do
if [ ${arr[$j]} -gt ${arr[$j+1]} ]; then
tmp=${arr[$j]}
arr[$j]=${arr[$j+1]}
arr[$j+1]=$tmp
fi
done
done

echo "Mang sau khi sap xep tang dan: "
for ((i=0; i<n; i++))
do
echo -n "${arr[$i]}"
done

