# #325 Div2 A. Alena's Schedule
n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
lesson = 0
rest = 0
a.each do |i|
  if i == 1 then
    if rest == 1 and lesson > 0 then
      lesson += 1
    end
    rest = 0
    lesson += 1
  else
    rest += 1
  end
end
puts lesson