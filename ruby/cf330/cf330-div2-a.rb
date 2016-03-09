# [Problem - A - Codeforces](http://codeforces.com/contest/595/problem/A)
n, m = gets.chomp.split(" ").map(&:to_i)
ans = 0
n.times do |i|
  rooms = gets.chomp.split(" ").map(&:to_i)
  rooms.each_slice(2) do |a, b|
    if (a == 1) or (b == 1) then
      ans += 1
    end
  end
end
puts ans