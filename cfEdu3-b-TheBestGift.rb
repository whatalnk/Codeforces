n, m = gets.chomp.split(" ").map(&:to_i)
books = gets.chomp.split(" ").map(&:to_i)
dic = Hash.new(0)
res = 0
books.each do |k|
  dic[k] += 1
end
(1..m).to_a.combination(2) do |i, j|
    res +=  dic[i] * dic[j]
end
puts res
