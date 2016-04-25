n = gets.chomp.to_i

direcs = gets.chomp.split("")
lens = gets.chomp.split(" ").map(&:to_i)

a = Array.new(n, 0)

curr = 0
while curr >= 0 && curr < n
  if a[curr] != 0
    puts "INFINITE"
    exit
  end
  a[curr] = 1
  if direcs[curr] == "<" then
    move = lens[curr] * -1
  else
    move = lens[curr]
  end
  curr += move
end
puts "FINITE"
