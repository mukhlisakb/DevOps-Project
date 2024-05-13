#!/bin/bash

# Fungsi untuk menghitung jumlah kata "bash" dalam kalimat
hitung_bash() {
    local kalimat=$1
    local jumlah=$(echo "$kalimat" | grep -o -i "bash" | wc -l)
    echo "Jumlah kata 'bash' dalam kalimat adalah $jumlah"
}

# Meminta pengguna untuk memasukkan kalimat
echo "Masukkan sebuah kalimat:"
read kalimat

# Memanggil fungsi untuk menghitung jumlah kata "bash"
hitung_bash "$kalimat"

# Penjelasan script:

# Skrip ini mendefinisikan sebuah fungsi bernama hitung_bash() yang menerima satu parameter, yaitu kalimat.
# Dalam fungsi tersebut, menggunakan perintah grep untuk mencari kata "bash" dalam kalimat.
# Argumen -o digunakan agar grep hanya mencetak kata "bash" yang cocok.
# Argumen -i digunakan agar pencarian tidak memperhatikan huruf besar atau kecil (case-insensitive).
# Hasil pencarian diteruskan ke perintah wc -l untuk menghitung jumlah baris, yang mewakili jumlah kata "bash".
# Skrip meminta pengguna untuk memasukkan kalimat.
# Terakhir, skrip memanggil fungsi hitung_bash() dengan kalimat yang dimasukkan pengguna sebagai argumen.