# [Problem - 592A - Codeforces](http://codeforces.com/problemset/problem/592/A)
field = []
while line = gets
  field << line.chomp.split("")
end
field = field.transpose
stepA = []
stepB = []
field.each do |r|
  a = r.rindex("W")
  b = r.rindex("B")
  unless b.nil? then
    if a.nil? or (a < b) then
      stepB << 7 - b
    end
  end
  a = r.index("W")
  b = r.index("B")
  unless a.nil? then
    if b.nil? or (a < b) then
      stepA << a
    end
  end
end
if stepB.empty? or (stepA.min <= stepB.min) then
  puts "A"
elsif stepA.empty? or (stepA.min > stepB.min) then
  puts "B"
end