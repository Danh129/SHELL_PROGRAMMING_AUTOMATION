echo "Nhập số:"
read n

sum=0
for (( i=1; i<=n/2; i++ ))
do
    if [ $((n % i)) -eq 0 ]; then
        sum=$((sum+i))
    fi
done

if [ $sum -eq $n ]; then
    echo "$n là số hoàn hảo"
else
    echo "$n không phải số hoàn hảo"
fi