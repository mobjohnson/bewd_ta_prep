## Two sorting methods

sen = "We are never ever ever getting back together"

puts sen

def reverse_words(sentence)
  sentence.split(' ').reverse.join(' ')
end

def reverse_each_word(sentence)
  sentence_array = sentence.split(' ')
  rev_sentence_array = sentence_array.map do |word|
    word.reverse
  end
  rev_sentence_array.join(' ')
end

puts reverse_words(sen)

puts reverse_each_word(sen)
