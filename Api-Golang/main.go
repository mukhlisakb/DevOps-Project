package main

import (
	"fmt"
)

// Function to count even numbers in an array
// Returns 0 if there is any number >= 100
func countEvenNumbers(arr []int) int {
	count := 0

	for _, num := range arr {
		if num >= 100 {
			return 0
		}
		if num%2 == 0 {
			count++
		}
	}

	return count
}

func main() {
	// Test cases
	arr1 := []int{5, 10, 7, 8, 9}
	arr2 := []int{10, 8, 9, 6, 8}
	arr3 := []int{5, 6, 100, 8, 10}

	fmt.Printf("Jumlah angka genap dalam %v adalah: %d\n", arr1, countEvenNumbers(arr1)) // Output: 2
	fmt.Printf("Jumlah angka genap dalam %v adalah: %d\n", arr2, countEvenNumbers(arr2)) // Output: 4
	fmt.Printf("Jumlah angka genap dalam %v adalah: %d\n", arr3, countEvenNumbers(arr3)) // Output: 0
}
