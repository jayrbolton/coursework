package main

import (
	"fmt"
	"math"
)

func Sqrt(x float64) (z float64) {
	z = x / 2
	diff := z
	for diff > 0.00000000000000000000001 {
		z = equation(z, x)
		diff = math.Abs(diff - z)
	}
	return
}

func equation(z, x float64) float64 {
	return z - (z * z - x) / (2 * z)
}

func main() {
	fmt.Println(Sqrt(2), math.Sqrt(2))
}
