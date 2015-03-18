# def encode(input)
#   cipher = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
#   output = ''
#   i = 0
#   input.each_char do |char|
#     output = output + cipher[13 + cipher.index(char)]
#     i += 1
#   end
#   output
# end

def encode(input)
  # alphabet reference array
  alphabet = ('a'..'z').to_a
  # cipher array is alphabet with characters offset by 13
  cipher = alphabet.rotate(13)
  # convert input string into an array
  input = input.split('')
  # iterate over input array with results saving to an output array
  output = input.map do |char|  
    # find the index in the alphabet array corresponding to char
    cipher_index = alphabet.index(char)
    # find corresponding character in the cipher array
    cipher[cipher_index]
  end
  # convert output array into a string
  output.join
end

 puts encode('hello')
 puts encode('peter')
