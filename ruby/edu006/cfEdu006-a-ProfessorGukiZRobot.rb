x1, y1 = gets.chomp.split(" ").map(&:to_i)
x2, y2 = gets.chomp.split(" ").map(&:to_i)
dx = (x1 - x2).abs()
dy = (y1 - y2).abs()
puts [dx, dy].max