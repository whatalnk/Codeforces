# [Problem - A - Codeforces](http://codeforces.com/contest/599/problem/A)
d1, d2, d3 = gets.chomp.split(" ").map(&:to_i)
puts [2*(d1+d2), d1+d2+d3, 2*(d1+d3), 2*(d2+d3)].min