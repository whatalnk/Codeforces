n, m = gets.chomp.split(" ").map(&:to_i)
restraunts = []
street = gets.chomp.split(" ").map(&:to_i)
street_min = street.min
row = 0
restraunts << street
(n-1).times do |i|
  street = gets.chomp.split(" ").map(&:to_i)
  if street_min < street.min then
    street_min = street.min
    row = i + 1
  end
  restraunts << street
end
puts restraunts[row].min