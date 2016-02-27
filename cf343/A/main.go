package main

import (
	"fmt"
	"strings"
)

func count(a []string, e string) int {
	ret := 0
	for _, i := range a {
		if i == e {
			ret++
		}
	}
	return ret
}

func comb(n, r int) int {
	if n == r || r == 0 {
		return 1
	} else {
		return comb(n, r-1) * (n - r + 1) / r
	}
}

func main() {
	var n int
	var s string
	cake := [][]string{}
	chocolate := 0
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&s)
		r := strings.Split(s, "")
		c := count(r, "C")
		if c > 1 {
			chocolate += comb(c, 2)
		}
		cake = append(cake, r)
	}
	for i := 0; i < n; i++ {
		c := 0
		for j := 0; j < n; j++ {
			if cake[j][i] == "C" {
				c++
			}
		}
		if c > 1 {
			chocolate += comb(c, 2)
		}
	}
	fmt.Println(chocolate)
}
