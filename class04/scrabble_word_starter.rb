require 'pry'

class ScrabbleWord
  def initialize(word)
    @points = {
      'a' => 1,
      'b' => 3,
      'c' => 3,
      'd' => 2,
      'e' => 1,
      'f' => 4,
      'g' => 2,
      'h' => 4,
      'i' => 1,
      'j' => 8,
      'k' => 5,
      'l' => 1,
      'm' => 3,
      'n' => 1,
      'o' => 1,
      'p' => 3,
      'q' => 10,
      'r' => 1,
      's' => 1,
      't' => 1,
      'u' => 1,
      'v' => 4,
      'w' => 4,
      'x' => 8,
      'y' => 4,
      'z' => 10
    }
    @word = word
    @score = 0
  end

  def word
    @word.downcase
  end

  def word=(word)
    @word = word
  end

  # def score
  #   @score
  # end

  # def score
  #   word.each_char { |char| @score += @points[char] }
  #   @score
  # end

  def score
    word_array = word.split(//)
    puts word_array
    score_array = word_array.map do |char| 
      @points[char] 
    end
    score_array.each do |score|
      @score += score
    end
    return @score
  end

  def multiplier_score(mult)
    mult * @score
  end

end

zebra = ScrabbleWord.new('Zebra')


binding.pry