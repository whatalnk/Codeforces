a = gets.chomp.rjust(10**6, "0")
b = gets.chomp.rjust(10**6, "0")

if a == b then
  puts "="
elsif a > b then
  puts ">"
else
  puts "<"
end