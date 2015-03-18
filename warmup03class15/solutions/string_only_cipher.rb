def encode(input)
  cipher = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
  output = ''
  i = 0
  input.each_char do |char|
    output = output + cipher[13 + cipher.index(char)]
    i += 1
  end
  output
end