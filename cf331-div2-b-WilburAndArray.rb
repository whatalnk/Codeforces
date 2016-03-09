n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
e = 0
res = 0
n.times do |i|
  res += (a[i] - e).abs
  e = a[i]
end
puts res
