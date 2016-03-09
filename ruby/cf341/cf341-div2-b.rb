n = gets.chomp.to_i
coords1 = Hash.new(0)
coords2 = Hash.new(0)
n.times do
  coord = gets.chomp.split(" ").map(&:to_i)
  coords1[coord[1] - coord[0]] += 1
  coords2[coord[1] + coord[0]] += 1
end

def comb(n, k)
  return ((n - k + 1)..n).inject(:*) / (1..k).inject(:*)
end

res = 0
coords1.values.each do |v|
  res += comb(v, 2)
end
coords2.values.each do |v|
  res += comb(v, 2)
end

puts res
