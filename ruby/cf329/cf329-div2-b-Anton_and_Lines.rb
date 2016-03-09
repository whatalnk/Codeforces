# [Problem - B - Codeforces](http://codeforces.com/contest/593/problem/B)
n = gets.chomp.to_i
x1, x2 = gets.chomp.split(" ").map(&:to_i)
x1 += 1.0e-10
x2 -= 1.0e-10
ary = []
n.times do |i|
  k, b = gets.chomp.split(" ").map(&:to_f)
  ary << [i, (x1)*k+b, (x2)*k+b]
end
ary1 = ary.sort_by{|v| v[1]}
ary2 = ary.sort_by{|v| v[2]}
if ary1 == ary2 then
  puts "NO"
else
  puts "YES"
end

