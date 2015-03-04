sen = "We are never ever ever getting back together"

puts sen

def reverse_words(sentence)
  sentence.split.reverse.join(" ")
end



def reverse_each_word(sentence)
  rev_split_sen = sentence.split.map do |word| 
    word.reverse
  end
  rev_split_sen.join(" ")
end



puts reverse_words(sen)

puts reverse_each_word(sen)

