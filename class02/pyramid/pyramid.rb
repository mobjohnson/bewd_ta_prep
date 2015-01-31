puts "Please enter a character to make the pyramid"
char = gets.chomp
puts "How many rows in the pyramid?"
rows = gets.chomp.to_i
puts "Would you like it upside down? (Y or N)"
upside_down = gets.chomp.downcase
line = 0
output = char
if upside_down == 'y'
  line = rows
  rows = 0
  while line > 0
    print "#{' ' * rows}"
    puts "#{char}" * (line * 2 - 1)
    # output = output + char + output
    line -= 1
    rows += 1
  end
else
  while rows > 0
    print "#{' ' * rows}"
    puts "#{char}" * (line * 2 + 1)
    # output = output + char + output
    line += 1
    rows -= 1
  end
end



