puts "Please enter a character to make the pyramid"
char = gets.chomp
puts "How many rows in the pyramid?"
rows = gets.chomp.to_i
line = 0
output = char
while rows > 0
  print "#{' ' * rows}"
  puts "#{char}" * (line * 2 + 1)
  # output = output + char + output
  line += 1
  rows -= 1
end

