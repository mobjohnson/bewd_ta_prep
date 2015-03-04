def reverse_words(sentence)
  sentence.split.reverse.join(" ")
end

def reverse_each_word(sentence)
  sentence.split.map(&:reverse).join(" ")
end