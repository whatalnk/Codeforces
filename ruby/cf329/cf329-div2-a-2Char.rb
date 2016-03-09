# [Problem - A - Codeforces](http://codeforces.com/contest/593/problem/A)
n = gets.chomp.to_i
d = Hash.new(0)
n.times do
  word = gets.chomp
  k = word.split("").uniq.sort
  v = word.length
  d[k] += v if k.length <= 2
end
res = 0
(?a..?z).to_a.combination(2) do |kk|
  res = [res, d[[kk[0]]] + d[[kk[1]]] + d[kk]].max
end
puts res