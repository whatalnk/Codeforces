n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp
end

puts arr.sort{|a, b| a + b <=> b + a}.join("")
