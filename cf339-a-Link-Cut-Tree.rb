l, r, k = gets.chomp.split(" ").map(&:to_i)

from = Math.log(l, k)
to = Math.log(r, k)

a = ((from.floor)..(to.ceil)).to_a.map{|i| k**i}.keep_if{|i| i >= l and i <= r}
if a.length == 0 then
  puts -1
else
  puts a.join(" ")
end
