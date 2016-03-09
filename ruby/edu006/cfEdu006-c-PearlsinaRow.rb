n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

h = Hash.new([])

res = []

a.each_with_index do |i, j|
  h[i] += [j + 1]
  if h[i].length() == 2 then
    res << h[i]
    h = Hash.new([])
  end
end

if res.empty? then
  puts -1
else
  puts res.length()
  res.last[1] = n
  tmp = 1
  res.each do |r|
    puts [[r[0], tmp].min, r[1]].join(" ")
    tmp = r[1] + 1
  end
end