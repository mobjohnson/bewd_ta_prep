story = [
  'Fry is born without a delta brainwave',
  'As a result, Fry is cryogenically frozen until 2999',
  'In the future, Fry works on a spaceship',
  'The spaceship hits a wormhole and crashes in 1941 Roswell, NM',
  'Fry encounters his grandmother, then inadvertently sires his father'
]

i = 0
puts story[i]
puts 'Should we continue? (Y/N)'
while gets.chomp.downcase != 'n'
  i += 1
  puts story[i]
  puts 'Should we continue? (Y/N)'
  i = -1 if i == (story.length - 1)
end


### solution file does not work
### it does not prompt prior to the gets.chomp
### and has =+ instead of +=
