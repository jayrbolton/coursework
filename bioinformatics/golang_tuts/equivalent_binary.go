package main
// Copyright 2011 The Go Authors.  All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import (
        "fmt"
        "math/rand"
)

// A Tree is a binary tree with integer values.
type Tree struct {
        Left  *Tree
        Value int
        Right *Tree
}

// New returns a new, random binary tree holding the values k, 2k, ..., 10k.
func New(k int) *Tree {
        var t *Tree
        for _, v := range rand.Perm(10) {
                t = insert(t, (1+v)*k)
        }
        return t
}

func insert(t *Tree, v int) *Tree {
        if t == nil {
                return &Tree{nil, v, nil}
        }
        if v < t.Value {
                t.Left = insert(t.Left, v)
        } else {
                t.Right = insert(t.Right, v)
        }
        return t
}

func (t *Tree) String() string {
        if t == nil {
                return "()"
        }
        s := ""
        if t.Left != nil {
                s += t.Left.String() + " "
        }
        s += fmt.Sprint(t.Value)
        if t.Right != nil {
                s += " " + t.Right.String()
        }
        return "(" + s + ")"
}

func (t *Tree) Walk(ch chan int) {
	_walk(t, ch)
	close(ch)
}

func _walk(t *Tree, ch chan int) {
	if t != nil {
		_walk(t.Left, ch)
		ch <- t.Value
		_walk(t.Right, ch)
	}
}

func (t1 *Tree) Same(t2 *Tree) bool {
	c1 := make(chan int)
	c2 := make(chan int)
	go t1.Walk(c1)
	go t2.Walk(c2)
	for val := range c1 {
		if val != <-c2 {
			return false
		}
	}
	return true
}

func (t *Tree) Prnt() {
	c := make(chan int)
	go t.Walk(c)
	for i := 0; i < 10; i++ {
		fmt.Println(<-c)
	}
}

func main() {
	fmt.Println(New(1).Same(New(1)))
	fmt.Println(New(1).Same(New(2)))
}
