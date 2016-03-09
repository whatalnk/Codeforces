# [Problem - A - Codeforces](http://codeforces.com/contest/608/problem/A)
n, s = gets.chomp.split(" ").map(&:to_i)
psgs = Array.new()
n.times do
  psgs << gets.chomp.split(" ").map(&:to_i)
end
psgs = psgs.sort_by{|x| x[0]}.reverse
res = 0
current = s
psgs.each do |f, t|
  res += current - f
  current = f
  if res < t then
    res = t
  end
end
if current != 0 then
  res += current
end
puts res
