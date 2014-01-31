package main

import "./lib/pic"

func Pic(dx, dy int) [][]uint8 {
	pic := make([][]uint8, dy)

	for y := 0; y < dy; y++ {
		pic[y] = make([]uint8, dx)
		for x := 0; x < dx; x++ {
			pic[y][x] = pixel(x, y)
		}
	}

	return pic
}

func pixel(x, y int) uint8 {
	return uint8((x + y) / 2)
}

func main() {
	pic.Show(Pic)
}
