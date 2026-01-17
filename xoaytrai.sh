#!/bin/bash
: << OFF
    #xoay phai
    local left=("${arr[@]:n-k}")
    local right=("${arr[@]:0:n-k}")
OFF

arr=(ABC234 CV 345)
n=${#arr[@]}

xoaytrai() {
    local k=$1
    k=$((k % n))
    # cắt mảng

    local left=("${arr[@]:k}")
    local right=("${arr[@]:0:k}")
    echo "${left[@]} ${right[@]}"
}

read -p "Nhap k: " k
kq=$(xoaytrai $k)

echo "Dap an: $kq"
