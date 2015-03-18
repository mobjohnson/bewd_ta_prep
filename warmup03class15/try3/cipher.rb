def encode(input)
  # create an array of the alphabet
  alphabet = ('a'..'z').to_a
  # create a cipher array of shifted characters
  cipher = alphabet.rotate(13)
  # create an input array from input string
  input = input.split('')
  # save an output array, based upon input array
  output = input.map do |char|
    # find the index of the character in alphabet
    alphabet_index = alphabet.index(char)
    # return the character in cipher array corresponding to index
    cipher[alphabet_index]
  end
  # convert the output array into a string
  output.join
end

puts encode('hello')
puts encode('peter')