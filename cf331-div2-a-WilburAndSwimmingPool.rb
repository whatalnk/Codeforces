n = gets.chomp.to_i
coors = []
n.times do
  coors << gets.chomp.split(" ").map(&:to_i)
end
if n == 3 or n == 4 then
  coors_t = coors.transpose
  dx = coors_t[0].max - coors_t[0].min
  dy = coors_t[1].max - coors_t[1].min
  puts dx * dy
elsif n == 2
  if coors[0][0] != coors[1][0] and coors[0][1] != coors[1][1] then
    dx = (coors[0][0] - coors[1][0]).abs
    dy = (coors[0][1] - coors[1][1]).abs
    puts dx * dy
  else
    puts -1
  end
else
  puts -1
end
