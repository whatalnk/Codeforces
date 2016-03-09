# [Problem - 604A - Codeforces](http://codeforces.com/problemset/problem/604/A)
xx = [500, 1000, 1500, 2000, 2500]
mm = gets.chomp.split(" ").map(&:to_f)
ww = gets.chomp.split(" ").map(&:to_f)
hs, hu = gets.chomp.split(" ").map(&:to_i)
calc_score = ->(x, m, w) {
  (250 - m) * x / 250 - 50 * w
}
scores = Array.new
(0...5).each do |i|
  scores << [0.3*xx[i], calc_score.call(xx[i], mm[i], ww[i])].max
end
puts (scores.inject(:+) + hs * 100 - hu * 50).to_i
