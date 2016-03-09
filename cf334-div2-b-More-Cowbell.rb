# [Problem - 604B - Codeforces](http://codeforces.com/problemset/problem/604/B)
n, k = gets.chomp.split(" ").map(&:to_i)
ss = gets.chomp.split(" ").map(&:to_i)
if n.even? then
  min_box = n / 2
  d = (k - min_box) * 2
else
  min_box = n / 2 + 1
  d = (k - min_box) * 2 + 1
end

res = ss.pop(d)

half = ss.size / 2
right = ss.pop(half).reverse
ss.zip(right).each do |a, b|
  res << a + b
end
puts res.max
