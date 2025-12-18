#viet chuong trinh tim dinh dang co do dai to nhat
#co the doc duoc tu taptin1

max=0
dong=""
while read line
do
n=$(expr length "$line")
if [ $n -gt $max ]; then
dong="$line"
max=$n
fi
done < "$1"
echo "Dong trong tap tin $1 co do dai max = $max la $dong"