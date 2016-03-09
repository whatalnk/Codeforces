$stdout.sync = true
while line = gets
  com = line.chomp.split(" ")
  com.shift if com[0] == "#"
  contest = com[0]
  language = com[1]
  remotename = "#{contest}-#{language}"
  remotepath = com[2]
  if contest == "cf345" && language == "ruby" then
    com = ["pull", "-s" "subtree", remotename, "master"]
    puts "git " + com.join(" ")
    system("git", *com)
  else
    com1 = ["fetch", remotename, master]
    puts "git " + com1.join(" ")
    system("git", *com1)
    com2 = ["subtree", "pull", "--prefix", "#{language}/#{contest}", remotename, "master", "--squash"]
    puts "git " + com2.join(" ")
    system("git", *com2) 
  end
  puts "-"*10
  sleep 1
end
