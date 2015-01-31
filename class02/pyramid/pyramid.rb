puts "Please enter a character to make the pyramid"
char = gets.chomp
puts "How many rows in the pyramid?"
rows = gets.chomp.to_i
puts "Do you want an upside-down pyramid? (Y or N)"
upside_down = gets.chomp 
count = 0
while rows > count
  if upside_down == 'n'
    print "#{' ' * (rows - count)}"
    puts "#{char}" * (count * 2 + 1)
  else
    print "#{' ' * count}"
    puts "#{char}" * ((rows-count) * 2 -1)
  end
  count += 1
end

