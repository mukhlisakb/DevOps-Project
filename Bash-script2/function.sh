#!/bin/bash

# Fungsi untuk menghitung luas segitiga
hitung_luas_segitiga() {
    local tinggi=$1
    local alas=$2
    local luas=$(echo "scale=2; 0.5 * $alas * $tinggi" | bc)
    echo "Luas segitiga dengan tinggi $tinggi dan alas $alas adalah $luas"
}

# Meminta pengguna untuk memasukkan tinggi dan alas segitiga
echo "Masukkan tinggi segitiga:"
read tinggi

echo "Masukkan alas segitiga:"
read alas

# Memanggil fungsi untuk menghitung luas segitiga
hitung_luas_segitiga $tinggi $alas
