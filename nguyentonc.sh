#!/bin/bash

# Hàm kiểm tra số nguyên tố
kiemtranguyento() {
    local x=$1

    if [ "$x" -lt 2 ]; then
        return 0
    fi

    for ((i=2; i*i<=x; i++)); do
        if [ $((x % i)) -eq 0 ]; then
            return 0
        fi
    done

    return 1
}

# Kiểm tra tham số
if [ $# -ne 1 ]; then
    echo "Cach dung: $0 n"
    exit 1
fi

n=$1
count=0
num=2
dong=0

# In n số nguyên tố
while [ $count -lt $n ]; do
    kiemtranguyento $num
    if [ $? -eq 1 ]; then
        printf "%5d" $num
        count=$((count + 1))
        dong=$((dong + 1))

        if [ $dong -eq 10 ]; then
            echo
            dong=0
        fi
    fi
    num=$((num + 1))
done

# Xuống dòng nếu dòng cuối chưa đủ 10 số
if [ $dong -ne 0 ]; then
    echo
fi
