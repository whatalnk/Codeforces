s = gets.chomp.split("")
m = gets.chomp.to_i
m.times do
  l, r, k = gets.chomp.split(" ").map(&:to_i)
  kk = k % (r - l + 1)
  sr = []
  kk.times do
    sr.unshift(s.slice!(r-1))
    r -= 1
  end
  s.insert(l-1, sr).flatten!
end
puts s.join("")
