#!/bin/bash

# Fungsi untuk mendapatkan inisial dari nama lengkap
inisial_nama() {
    local nama=$1
    inisial=$(echo "$nama" | awk '{for(i=1;i<=NF;i++)print toupper(substr($i,1,1))}')
    echo "Inisial dari $nama adalah $inisial"
}

# Meminta pengguna untuk memasukkan nama lengkap
echo "Masukkan nama lengkap:"
read nama_lengkap

# Memanggil fungsi untuk mendapatkan inisial
inisial_nama "$nama_lengkap"

# Penjelasan script:

# Pertama, kita mendefinisikan sebuah fungsi bernama inisial_nama() yang menerima satu parameter, yaitu nama lengkap.
# Dalam fungsi tersebut, kita menggunakan perintah awk untuk memisahkan setiap kata dalam nama lengkap dan mengambil huruf pertama dari setiap kata tersebut.
# Kemudian, huruf pertama dari setiap kata diubah menjadi huruf kapital menggunakan fungsi toupper().
# Hasilnya adalah inisial dari nama lengkap.
# Skrip meminta pengguna untuk memasukkan nama lengkap.
# Terakhir, skrip memanggil fungsi inisial_nama() dengan nama lengkap yang dimasukkan pengguna sebagai argumen.