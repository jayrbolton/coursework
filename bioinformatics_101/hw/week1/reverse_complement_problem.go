/*
Jay R Bolton
1/12/14

Reverse Complement Problem: Reverse complement a nucleotide pattern.
	Input: A DNA string Pattern.
	Output: Pattern, the reverse complement of Pattern.

A <-> T
G <-> C

in haskell (god i miss it)

sample = "AAAACCCGGT"

complement = map comp

comp "A" = "T"
comp "G" = "C"
comp "T" = "A"
comp "C" = "G"

*/

package main

import "fmt"

func Complement(gene string) string {
	comp := ""
	for _, nuc := range(gene) {
		switch nuc {
			case 'A': comp = "T" + comp
			case 'G': comp = "C" + comp
			case 'T': comp = "A" + comp
			case 'C': comp = "G" + comp
		}
	}
	return comp
}

func main() {
	sample := "AAAACCCGGT"
	fmt.Println(Complement(sample))
	// Desired output: 'ACCGGGTTTT'
}
