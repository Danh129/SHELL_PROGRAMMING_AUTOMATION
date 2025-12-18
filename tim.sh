#Tim so lon nhat trong day nhap vao
function input() {
echo -n "nhap so luong phan tu n: "
read n
max=-99999999
for ((i=1; i<=n;i++))
do 
echo -n "nhap phan tu thu $i:"
read x

if [ $x -gt $max ]; then
max=$x
fi
done
echo "So lon nhat trong day la $max"
}
input