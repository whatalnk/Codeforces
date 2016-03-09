# 14462223
n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

left = 0
prev = 0
ans = 1
tmp = 0
(1...n).each do |i|
  d = a[i] - a[i-1]
  if d != 0 then
    if d == tmp then
      left = prev + 1
    end
    tmp = d
    prev = i - 1
  end
  ans = [ans, i - left + 1].max
end
puts ans
