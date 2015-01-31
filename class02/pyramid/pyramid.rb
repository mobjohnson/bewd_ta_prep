puts "Please enter a character to make the pyramid"
char = gets.chomp
puts "How many rows in the pyramid?"
rows = gets.chomp.to_i


count = 0


while rows > count
  print "#{' ' * (rows - count)}"
  puts "#{char}" * (count * 2 + 1)
  count += 1
end

