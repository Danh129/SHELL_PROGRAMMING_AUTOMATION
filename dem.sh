#!/bin/bash
# Lệnh sochuso: đếm số chữ số của số nguyên dương

# ===== HÀM ĐẾM CHỮ SỐ =====
sochuso() {
    local n=$1
    local dem=0

    while [ $n -gt 0 ]; do
        dem=$((dem + 1))
        n=$((n / 10))
    done

    echo $dem
}

n=$1

# ===== GỌI HÀM =====
kq=$(sochuso $n)

# ===== IN KẾT QUẢ =====
echo "So $n co $kq chu so"
