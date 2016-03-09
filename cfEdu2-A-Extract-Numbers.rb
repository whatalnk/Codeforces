# [Problem - A - Codeforces](http://codeforces.com/contest/600/problem/A)
s = gets.chomp.split(/[,;]/, -1)
number = []
nonnumber = []
s.each do |w|
  if w.match(/^[0-9]+$/) then
    if w.length >= 2 and w[0] == "0" then
      nonnumber << w
    else
      number << w
    end
  else
    nonnumber << w
  end
end
if number.length == 0 then
  puts "-"
else
  p number.join(",")
end
if nonnumber.length == 0 then
  puts "-"
else
  p nonnumber.join(",")
end
