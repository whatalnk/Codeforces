a, b = gets.chomp.split(" ").map(&:to_i)

val = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]

res = 0

(a..b).each do |n|
  while n > 0 
    res += val[n%10]
    n /= 10
  end
end

puts res