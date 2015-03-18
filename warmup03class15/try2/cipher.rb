def encode(input)
  # create an array of letters in the alphabet
  alphabet = ('a'..'z').to_a
  #create an array of letters shifted by 13
  cipher = alphabet.rotate(13)
  # convert input into an array
  input = input.split('')
  # create an output array based upon input, but shifted
  output = input.map do |char|
    # for each char, find the alphabet index 
    alphabet_index = alphabet.index(char)
    # return the encrypted character at that index
    cipher[alphabet_index]
  end
  # convert output array back into a string
  output.join

end


puts encode('hello')
puts encode('peter')