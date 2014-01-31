# notes

## week 1

* given a circular genome 'text1' copy it to a circular 'text2'
* k-mers: repeated strings of length k in a text.
* k-mer pattern: the most frequent k-mer in a text if no other k0mer is more frequent than the pattern.
* DnaA box: the point in the genome where the DnaA protein binds to the genome to cut and replicate it. 
* word clump: a k-mer forms an (L, t)-clump inside a genome if there is a short (length L) interval of the genome in which it appears many (at least t) times.
* Skew(k) = |G| - |C|  in a genome
* Replication origin is where Skew(k) switches from decreasing to increasing.

### frequent words problem

Finding most frequent k-mers in a string.

* Input: a string 'text' and an integer 'k'
* Output: all most frequent k-mers in 'text'
