n = gets.chomp.to_i

a = n / 3
b = n % 3
if b != 0 then
  puts a * 2 + 1
else
  puts a * 2
end
