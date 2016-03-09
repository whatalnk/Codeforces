n, p = gets.chomp.split(" ").map(&:to_i)
lr = []
n.times do 
  lr << gets.chomp.split(" ").map(&:to_i)
end
res = 0
n.times do |i|
  l1, r1 = lr[i]
  l2, r2 = lr[i - 1]
  a1 = r1 / p - (l1 - 1) / p
  a2 = r2 / p - (l2 - 1) / p
  res += 2000 * (1 - (r1 - l1 + 1 - a1) / (r1 - l1 + 1).to_f * (r2 - l2 + 1 - a2) / (r2 - l2 + 1).to_f)
end
puts res
