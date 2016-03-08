n = gets.chomp.to_i
pieces = gets.chomp.split(" ").map(&:to_i)
teams = gets.chomp

init = 0

n.times do |i|
  init += pieces[i] if teams[i] == "B"
end

ret = init

# left
curr = init
n.times do |i|
  if teams[i] == "A" then
    curr += pieces[i]
  else
    curr -= pieces[i]
  end
  if curr > ret then
    ret = curr
  end
end


# right
curr = init
(n - 1).downto(0) do |i|
  if teams[i] == "A" then
    curr += pieces[i]
  else
    curr -= pieces[i]
  end
  if curr > ret then
    ret = curr
  end
end

puts ret
