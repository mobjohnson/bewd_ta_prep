require 'pry'

class FortuneCookie

  def initialize
    @wrapped = true
    @cracked = false
    @fortunes = ['You will be happy', 'You will travel', 'You will meet someone really cool']
  end

  def wrapped?
    @wrapped
  end

  def cracked?
    @cracked
  end

  def unwrap
    @wrapped = false
  end

  def crack
    if wrapped?
      puts "You need to unwrap it first."
    else
      @cracked = true
    end
  end

  def read
    if wrapped?
      puts "You need to unwrap it, then crack it."
    elsif !cracked?
      puts "You still need to crack it."
    else
      puts 'The OO is stong with you.'
      puts @fortunes.sample
    end
  end

end

binding.pry