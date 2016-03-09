n, x1, y1, x2, y2 = gets.chomp.split(" ").map(&:to_i)
dist = []

n.times do
  fx, fy = gets.chomp.split(" ").map(&:to_i)
  d1 = (x1 - fx)**2 + (y1 - fy)**2
  d2 = (x2 - fx)**2 + (y2 - fy)**2
  dist << [d1, d2]
end
dist << [0,0]

res = Float::INFINITY
dist.each do |i|
  r1 = i[0]
  r2 = 0
  dist.each do |j|
    if j[0] > r1 then
      r2 = [r2, j[1]].max
    end
  end
  res = [res, r1 + r2].min
end

puts res
