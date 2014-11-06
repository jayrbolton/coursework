(ns bioinformatics.core)

; Counting Words

;  PatternCount(Text, Pattern)
;        count <- 0
;        for i <- 0 to |Text| − |Pattern|
;            if Text(i, |Pattern|) = Pattern
;                count <- count + 1
;        return count

; Here it is manually in a loop, as the text describes:

(defn slice
	"Get the substring from text of length len starting from index i"
	[i len text]
  (apply str (take len (drop i text))))

(defn my-pattern-count
	"Count the number of times pattern appears in text"
	[text pattern]
  (let [text-len (count text) pattern-len (count pattern)]
    (loop [i 0 count 0]
      (if (> i text-len)
        count
        (if (= (slice i pattern-len text) pattern)
          (recur (+ i 1) (+ count 1))
          (recur (+ i 1) count))))))


; And here is a more efficient and simpler implementation using regexes

(defn pattern-count
	"Count the number of times pattern appears in text"
	[text pattern]
	(count (re-seq (re-pattern pattern) text)))
