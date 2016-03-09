# [Editorial of Educational Codeforces Round 3 - Codeforces](http://codeforces.com/blog/entry/22187)
n = gets.chomp.to_i
m = gets.chomp.split(" ").map(&:to_i).sort
msum = m.inject(:+)
mmod = msum % n
if mmod == 0
  mm = Array.new(n, msum / n)
else
  mm = Array.new(n - mmod, msum / n) + Array.new(mmod, msum / n + 1)
end
res = 0
m.zip(mm).each do |a, b|
  res += (a - b).abs
end
puts res / 2