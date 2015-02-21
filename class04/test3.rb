require 'pry'

class FortuneCookie 
  def initialize (wrapped, cracked)
    @wrapped = true
    @cracked = false
  end

  def wrapped 
    return @wrapped 
  end
  
  def cracked 
    return @cracked
  end

  def unwrap 
    return @unwrapped
  end

  def crack 
    return @cracked
  end

  def 
    @unwrapped::  false
    if @wrapped == false
    return 'You need to unwrap it, then crack it' 
  end
  end


    def read
      @unwrapped = false
    if @wrapped == false
    return 'You need to unwrap it, then crack it'

      elsif 
          puts  'You need to crack it first'
      else
      puts 'The 00 is strong with you'
    end
    
  end
end

binding.pry