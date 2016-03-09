n = gets.chomp.to_i
m = gets.chomp.to_i
a = []
n.times do
  a << gets.chomp.to_i
end
res = 0
a.sort.reverse.each do |i|
  break if m <= 0
  m -= i
  res += 1
end
puts res
