package main

import (
	"fmt"
	"math"
)

func Cbrt(x float64) float64 {
	var z float64 = 1
	change, prev := x, x
	for change > 0.0000000000000000001 {
		prev = z
		z = equation(z, x)
		change = math.Abs(prev - z)
	}
	return z
}

func equation(z, x float64) float64 {
	return z - (z * z * z - x) / (3 * z * z)
}

func main() {
	fmt.Println(Cbrt(2))
}
