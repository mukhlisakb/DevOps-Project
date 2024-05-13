#!/bin/bash

# Fungsi untuk menghitung jumlah angka genap dalam array
hitung_angka_genap() {
    local total=0
    for angka in "${array[@]}"; do
        if [ $angka -ge 100 ]; then
            total=0
            break
        elif [ $((angka % 2)) -eq 0 ]; then
            ((total++))
        fi
    done
    echo "Hasilnya: $total"
}

# Meminta pengguna untuk memasukkan array angka
echo "Masukkan array angka (pisahkan dengan spasi):"
read -a array

# Memanggil fungsi untuk menghitung jumlah angka genap
hitung_angka_genap "${array[@]}"

# Penjelasan script:

# Skrip ini mendefinisikan sebuah fungsi bernama hitung_angka_genap() untuk menghitung jumlah angka genap dalam array.
# Fungsi ini menggunakan loop for untuk mengiterasi melalui setiap elemen dalam array.
# Dalam loop, setiap angka diperiksa apakah lebih besar dari atau sama dengan 100. Jika ya, maka total diatur menjadi 0 dan loop dihentikan menggunakan break.
# Jika angka tidak lebih besar dari atau sama dengan 100, maka akan diperiksa apakah angka tersebut genap dengan menggunakan operasi modulo (%). Jika genap, total akan bertambah.
# Terakhir, skrip meminta pengguna untuk memasukkan array angka dan memanggil fungsi hitung_angka_genap() dengan array angka yang dimasukkan pengguna sebagai argumen.