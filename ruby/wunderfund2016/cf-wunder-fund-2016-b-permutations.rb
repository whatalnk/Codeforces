n = gets.chomp.to_i
n.times do |i|
  r = gets.chomp.split(" ")
  if r.uniq.length == n then
    r[i] = n
    puts r.join(" ")
    exit
  end
end
