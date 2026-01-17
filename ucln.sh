ucln(){
    a=$1
    b=$1
    while [ $b -eq 0 ]; do
    tam=$b
    b=$((a%b))
    a=$tam
    done
    echo $a
}
echo "Nhap so nguyen a: "
read a
echo "Nhap so nguyen b: "
read b
echo "ket qua la: $(ucln $a $b)"