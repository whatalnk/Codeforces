# [Problem - B - Codeforces](http://codeforces.com/contest/595/problem/B)
n, k = gets.chomp.split(" ").map(&:to_i)
aa = gets.chomp.split(" ").map(&:to_i)
bb = gets.chomp.split(" ").map(&:to_i)
if k == 1 then
  i = [aa, bb].transpose.map{|a, b| b % a == 0 ? 9 / a : 9 / a + 1}
  puts i.inject(:*).modulo(10**9 + 7)
else
  phone_parts = []
  aa.zip(bb).each do |a, b|
    phone_part = 1
    num_all = (10**k - 1) / a
    upper = (((b + 1) * 10**(k-1)))
    lower = ((b * 10**(k-1)) - 1)
    num_exclude = upper / a - lower / a
    phone_part += (num_all - num_exclude)
    if ((b + 1) * 10**(k - 1)) % a == 0 then
      phone_part += 1
    end
    phone_parts << phone_part
  end
  puts phone_parts.inject(:*).modulo(10**9 + 7)
end
