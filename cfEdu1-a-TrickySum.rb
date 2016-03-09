t = gets.chomp.to_i
t.times do
  n = gets.chomp.to_i
  power2 = []
  snd = 1
  i = 1
  while snd <= n
    power2 << snd
    snd = 2**i
    i += 1
  end
  puts n*(n+1)/2 - 2 * power2.inject(:+)
end