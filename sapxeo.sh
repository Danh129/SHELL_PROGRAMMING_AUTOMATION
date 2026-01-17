#!/bin/bash

# Nhập số phần tử
read -p "Nhap so phan tu: " n

# Nhập mảng
arr=()
for ((i=0; i<n; i++)); do
    read -p "arr[$i] = " x
    arr+=($x)
done

# Tách số chẵn và số lẻ
chan=()
le=()

for x in "${arr[@]}"; do
    if (( x % 2 == 0 )); then
        chan+=($x)
    else
        le+=($x)
    fi
done

# Sắp xếp số chẵn tăng dần
IFS=$'\n' chan=($(sort -nr <<< "${chan[*]}"))

# Sắp xếp số lẻ giảm dần
IFS=$'\n' le=($(sort -n <<< "${le[*]}"))

# In kết quả
echo "So chan tang dan: ${chan[*]}"
echo "So le giam dan: ${le[*]}"
