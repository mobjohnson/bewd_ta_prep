puts "What is the current temperature?"
temp = gets.chomp.to_i
puts "Is the A/C functional? (Y or N)"
functional = gets.chomp.downcase
puts "What temperature would you like it to be?"
new_temp = gets.chomp.to_i

if functional == 'y'
  if temp > new_temp
    puts "Turn on the A/C please"
  end
else
  if temp > new_temp
    puts "Fix the A/C now! It's hot!"
  else
    puts "Fix the A/C whenever you have the chance... it's cool..."
  end
end


