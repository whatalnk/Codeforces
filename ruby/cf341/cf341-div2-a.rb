n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

aoddmin = a.select{|x| x.odd?}.min

asum = a.inject(:+)
if asum.even? then
  puts asum
else
  puts asum - aoddmin
end
