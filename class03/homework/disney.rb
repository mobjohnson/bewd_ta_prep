characters = ["Mickey Mouse", "Aladdin", "Snow White", "Peter Pan", "Simba", "Mulan", "Goofy", "Elsa", "Tarzan", "Donald Duck", "Shere Khan", "Prince Charming", "Cinderella", "Mufasa", "Belle", "Jiminy Cricket"]


# - Write code that:
#   - Prints a random character
puts characters[rand(characters.length)]

#   - Prints the index of "Elsa"
puts characters.index('Elsa')
#   - Prints the fifth character (In this case it's Simba)
puts characters[4]
#   - Prints a list of all the character names on one line, with each name separated by a pipe: |
characters.each do |char|
  print char
  if char != characters.last
    print ' | '
  end
end



# - Bonus:
#   - Prints the full names of all of the characters with M names (Mickey Mouse, Mulan, Mufasa)
m_chars = []
characters.each do |char|
  if char[0] == 'M'
    m_chars << char
  end
end

m_chars.each do |char|
  print char
  if char != m_chars.last
    print ', '
  end
end

#   - Prints the first names of all the characters with two word names (Mickey, Snow, Peter, Donald, Shere, Prince, Jiminy)
two_chars = []
characters.each do |char|
  if char.include?(' ')
    two_chars << char
  end
end

two_chars = character.select { |char| char.include?(' ') }

two_chars.each do |char|
  print char
  if char != two_chars.last
    print ', '
  end
end


