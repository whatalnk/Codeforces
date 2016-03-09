n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
nut = []
a.each_with_index do |i, j|
  if i == 1 then
    nut << j
  end
end
dnut = []
(1..(nut.length - 1)).each do |i|
  dnut << nut[i] - nut[i - 1]
end
if a.all?{|v| v == 0} then
  puts 0
elsif dnut.empty? then
  puts 1
else
  puts dnut.inject(:*)
end