# [Problem - B - Codeforces](http://codeforces.com/contest/610/problem/B)
n = gets.chomp.to_i
jars = gets.chomp.split(" ").map(&:to_i)
jarmin = jars.min
if jars.uniq.length == 1 then
  puts jars.length * jarmin
else
  jars = jars * 2
  rem = 0
  i = 0
  while true
    break if jars.empty?
    j = jars.shift
    if j == jarmin then
      rem = [rem, i].max
      i = 0
    else
      i += 1
    end
  end
  puts n * jarmin + [rem, i].max
end