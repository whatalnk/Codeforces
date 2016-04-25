n, m, q = gets.chomp.split(" ").map(&:to_i)
a = Array.new(n).map{Array.new(m, 0)}
qs = []
while line = gets
  qs << line.split(" ").map(&:to_i)
end
qs.reverse.each do |ope|
  t = ope.shift
  if t == 1 then
    r = ope.shift - 1
    cyc = a[r].dup
    temp = cyc.pop
    cyc.unshift(temp)
    a[r] = cyc
  elsif t == 2 then
    c = ope.shift - 1
    cyc = a.map{|b| b[c]}
    temp = cyc.pop
    cyc.unshift(temp)
    n.times do |i|
      a[i][c] = cyc[i]
    end
  else
    r, c, x = ope
    r -= 1
    c -= 1
    a[r][c] = x
  end
end
a.each do |r|
  puts r.join(" ")
end
