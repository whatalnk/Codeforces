# [Problem - B - Codeforces](http://codeforces.com/contest/600/problem/B)
n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort
b = gets.chomp.split(" ").map(&:to_i)
res = Array.new()
b.each do |e|
  tmp = (0...n).bsearch {|i| a[i] > e}
  if tmp.nil? then
    res << n
  else
    res << tmp
  end
end
puts res.join(" ")
