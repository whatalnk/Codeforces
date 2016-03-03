n, p = gets.chomp.split.map(&:to_i)
apples = 1.0
com = []
n.times do
  com << gets.chomp
end
halfplus = 1
com.pop
com.reverse.each do |c|
  if c == "halfplus" then
    apples += 0.5
    apples *= 2
    halfplus += 1
  else
    apples *= 2
  end
end

puts ((apples - halfplus * 0.5) * p).to_i
