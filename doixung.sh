#thich hop kiem tra so thoi vd: 121 -> doi xung
: << OFF
read -p "Nhap chuoi: " n
ktra=$n 
dao=0
while [ $ktra -gt 0 ]; do
dao=$((dao * 10 + ktra % 10))
ktra=$((ktra / 10))
done
if [ $n -eq $dao ]; then
echo "$n la chuoi doi xung "
else
echo "$n khong phai la chuoi doi xung "
fi 
OFF


echo "Nhap chuoi de kiem tra: "
read str
str=$(echo "$str" | tr 'A-Z' 'a-z')
len=${#str}
i=1
j=$len
fag=1
while [ $i -lt $j ]; do
c1=$(echo "$str" | cut -c $i)
c2=$(echo "$str" | cut -c $j)
if [ "$c1" != "$c2" ]; then
fag=0
break
fi

i=$((i+1))
j=$((j-1))
done

if [ $fag -eq 1 ]; then
echo "$str la chuoi doi xung "
else
echo "$str khong phai la chuoi doi xung "
fi
