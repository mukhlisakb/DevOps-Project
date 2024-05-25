package main

import (
	"encoding/json"
	"net/http"
)

// Struct untuk menangkap data yang dikirim melalui POST
type TrapesiumInput struct {
	Tinggi    float64 `json:"tinggi"`
	SisiAtas  float64 `json:"sisi_atas"`
	SisiBawah float64 `json:"sisi_bawah"`
}

// Struct untuk menanggapi hasil perhitungan luas trapesium
type TrapesiumOutput struct {
	Luas float64 `json:"luas"`
}

// Handler untuk endpoint POST
func hitungLuasTrapesiumHandler(w http.ResponseWriter, r *http.Request) {
	// Menangkap data JSON dari body permintaan
	var trapesiumInput TrapesiumInput
	err := json.NewDecoder(r.Body).Decode(&trapesiumInput)
	if err != nil {
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}

	// Menghitung luas trapesium
	luas := 0.5 * (trapesiumInput.SisiAtas + trapesiumInput.SisiBawah) * trapesiumInput.Tinggi

	// Membuat respons
	trapesiumOutput := TrapesiumOutput{Luas: luas}

	// Mengirim respons JSON kembali ke klien
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(trapesiumOutput)
}

// func main() {
// Mendaftarkan handler untuk endpoint POST
//	http.HandleFunc("/api/hitung-luas-trapesium", hitungLuasTrapesiumHandler)

// Menjalankan server di port 8083
//	err := http.ListenAndServe(":8083", nil)
//	if err != nil {
//		fmt.Println("Error:", err)
//	}
//}
