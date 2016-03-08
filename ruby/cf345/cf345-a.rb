a1, a2 = gets.chomp.split(" ").map(&:to_i)
n = 0
while true
  if a1 < a2 then
    a1 += 1
    a2 -= 2
  else
    a1 -= 2
    a2 += 1
  end
  if a1 > 0 and a2 > 0 then
    n += 1
  elsif a1 == 0 or a2 == 0 then
    n += 1
    puts n
    exit
  else
    puts n
    exit
  end
end
