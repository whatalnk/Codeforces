# [Problem - A - Codeforces](http://codeforces.com/contest/610/problem/A)
n = gets.chomp.to_i

if n.odd? then
  puts 0
else
  ab = n / 2
  if ab.odd? then
    puts (ab - 1) / 2
  else
    puts ab / 2 - 1
  end
end
