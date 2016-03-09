n, bx = gets.chomp.split(" ").map(&:to_i)
xs = gets.chomp.split(" ").map(&:to_i)
m, by = gets.chomp.split(" ").map(&:to_i)
ys = gets.chomp.split(" ").map(&:to_i)

bxx = (0..(n-1)).map{|i| bx**i}.reverse
byy = (0..(m-1)).map{|i| by**i}.reverse

x = xs.zip(bxx).map{|i, j| i*j}.inject(:+)
y = ys.zip(byy).map{|i, j| i*j}.inject(:+)

if x == y then
  puts "="
elsif x < y then
  puts "<"
else
  puts ">"
end
