n, m = gets.chomp.split(" ").map(&:to_i)
bulbs = []
n.times do
  y = gets.chomp.split(" ").map(&:to_i)
  x = y.shift
  bulbs += y
end
if bulbs.uniq.length == m then
  puts "YES"
else
  puts "NO"
end

