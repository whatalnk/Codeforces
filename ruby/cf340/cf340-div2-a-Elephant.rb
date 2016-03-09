n = gets.chomp.to_i
a = n / 5
b = n % 5
if b == 0 then
  puts a
else
  puts a + 1
end