/*
Jay R Bolton
1/12/14

Reverse Complement Problem: Reverse complement a nucleotide pattern.
	Input: A DNA string Pattern.
	Output: Pattern, the reverse complement of Pattern.

in dreamlang:

type gene string

gene.kmers k
	freqs: {}
	gene each _ i
	  freqs at (gene from i to (i + k)) += 1
	freqs sort_by x y
		x val > y val
	^freqs

*/

package main

import "fmt"
import "sort"

type Kmers struct {
	m map[string]int
	s []string
}

func (k *Kmers) Len() int { return len(k.m) }
func (k *Kmers) Less(i, j int) bool { return k.m[k.s[i]] > k.m[k.s[j]]}
func (k *Kmers) Swap(i, j int) { k.s[i], k.s[j] = k.s[j], k.s[i] }

func kmers(text string, k int) Kmers {
	// Map every three-letter combo to its frequency
	freqs := make(map[string]int)
	for pos := 0; pos <= len(text) - k; pos++ {
		freqs[text[pos:pos+k]] += 1
	}
	// Sort the keys in the mapping based on the values (frequencies)
	ret := Kmers{freqs, make([]string, len(text) - k)}
	i := 0
	for key := range ret.m {
		ret.s[i] = key
		i++
	}
	sort.Sort(&ret)
	return ret
}

func main() {
	sample_input := "ACGTTGCATGTCGCATGATGCATGAGAGCT"
	kmers := kmers(sample_input, 4)
	for _, s := range(kmers.s) {
		if kmers.m[s] > 0 {
			fmt.Printf("%s:%d \n", s, kmers.m[s])
		}
	}
}
