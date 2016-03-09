# [Problem - A - Codeforces](http://codeforces.com/contest/606/problem/A)
a, b, c = gets.chomp.split(" ").map(&:to_i)
x, y, z = gets.chomp.split(" ").map(&:to_i)

need = 0
extra = 0
[a, b, c].zip([x, y, z]).each do |e1, e2|
  if e2 > e1 then
    need += e2 - e1
  else
    extra += (e1 - e2) / 2
  end
end
if need <=extra then
  puts "Yes"
else
  puts "No"
end
