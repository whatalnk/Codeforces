n = gets.chomp.split(" ").map(&:to_i)
tanks = gets.chomp.split(" ")

pow = 0
notbeautiful = "1"
tanks.each do |t|
  n1 = t.count("1")
  n0 = t.count("0")
  nrem = t.length - n1 - n0
  if t.length == 1 && n0 == 1 then
    puts 0
    exit
  elsif n1 != 1 or nrem != 0 then
    notbeautiful = t
  else
    pow += t.length - 1
  end
end
puts notbeautiful + "0" * pow