n = gets.chomp.to_i

slimes = []
n.times do
  slimes << 1
  while  slimes.size >= 2 && slimes.last(2).uniq.length == 1
    v = slimes.pop(2)
    slimes << v[0] + 1
  end
end
puts slimes.join(" ")
