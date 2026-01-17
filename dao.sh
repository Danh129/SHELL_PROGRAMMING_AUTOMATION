#!/bin/bash
# Lệnh sodao: đảo ngược một số nguyên dương

# ===== HÀM ĐẢO SỐ =====
sodao() {
    local n=$1
    local dao=0

    while [ $n -gt 0 ]; do
        dao=$((dao * 10 + n % 10))
        n=$((n / 10))
    done

    echo $dao
}

# ===== KIỂM TRA THAM SỐ =====
if [ $# -ne 1 ]; then
    echo "Cach dung: $0 n"
    exit 1
fi

n=$1

# ===== GỌI HÀM =====
ketqua=$(sodao $n)

# ===== IN KẾT QUẢ =====
echo "So dao cua $n la $ketqua"
