require 'pry'

class = FortuneCookie
  def initialize(wrapped, cracked)
    @wrapped = true
    @cracked = false
  end

  def wrapped 
    if @wrapped 
      puts 'The cookie is wrapped.'
    else
      puts 'The cookie is unwrapped.'
    end
   end
  
  def cracked 
    if @cracked
      puts 'The cookie is not cracked.'
    else 'The cookie is cracked.'
    end
  end

  def unwrap (wrapped, unwrapped)
    unwrapped != @wrapped

  end

  def crack (wrapped, cracked)
    if unwrap = false
      puts 'You need to unwrap it first.'
    else
      puts 'The cookie is cracked.'
    end

    
  end


    def read
      if @wrapped = false
        puts 'You need to unwrap it, then crack it'
      elsif 
          puts  'You need to crack it first'
      else
      puts 'The 00 is strong with you'
    end




end

binding.'pry'