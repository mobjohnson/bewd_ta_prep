puts 'What is your name?'
name = gets.chomp
puts 'What is your age?'
age = gets.chomp
puts "Hi #{name}, who is #{age} years old!"
age_delta = 75 - age.to_i
puts "You will be 75 years old in #{age_delta} years"
if name == 'Engelbert Humberdinck'
  name_match = true
else
  name_match = false
end
puts "It is #{name_match} that your name is Engelbert Humberdinck"
puts "Goodbye"