puts " Guess the number!"
number = gets.chomp.to_i
rand_num = Random.new
random = 1 + rand_num.rand(10)
count = 1
while number != random
  if number > random
    puts "Wrong! You are too high"
  else
    puts "Wrong! You are too low"
  end
  number = gets.chomp.to_i 
  count += 1
end
puts "You win!!!"
puts "It took you #{count} guesses"
