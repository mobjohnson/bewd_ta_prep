goodbye = "We are never ever ever getting back together"

puts goodbye

# def reverse_words(sentence)
#   sentence.split(' ').reverse.join(' ')
# end


def reverse_each_word(sentence)
  words = sentence.split(' ')
  rev_words = words.map do |word|
    word.reverse
  end
  rev_words.join(' ')
end

# puts reverse_words(goodbye)

puts reverse_each_word(goodbye)