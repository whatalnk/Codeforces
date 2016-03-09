# [Problem - 592C - Codeforces](http://codeforces.com/problemset/problem/592/C)
t, w, b = gets.chomp.split(" ").map(&:to_i)
res = 0
(1..t).each do |i|
  ww = i / w
  www = w * ww
  bb = i / b
  bbb = b * bb
  if www ==bbb then
    res += 1
  end
end
puts Rational(res, t)