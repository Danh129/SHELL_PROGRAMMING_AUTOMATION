
#!/bin/bash

echo "Nhập chuỗi:"
read str

len=${#str}
i=1
j=$len
flag=1

while [ $i -lt $j ]
do
    c1=$(echo "$str" | cut -c $i)
    c2=$(echo "$str" | cut -c $j)

    if [ "$c1" != "$c2" ]; then
        flag=0
        break
    fi

    i=$((i+1))
    j=$((j-1))
done

if [ $flag -eq 1 ]; then
    echo "Chuỗi '$str' là chuỗi đối xứng."
else
    echo "Chuỗi '$str' KHÔNG phải là chuỗi đối xứng."
fi
