require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/jedi_academy")

# go...

# padawans (tablename snake_case_plural)
# Padawan (class name CamelCaseSingular)

class Padawan < ActiveRecord::Base

def randomize_lightsaber
  color = ['red', 'blue', 'orange', 'aqua']
  self.update(lightsaber: color.sample)
  self.save
  p self
end


end

p = Padawan.find(8)

p.randomize_lightsaber


binding.pry

# Padawan.all

# Padawan.where(lightsaber: 'purple').order(:name)

# p = Padawan.where(lightsaber: 'purple')
# p.each do |single|
#   single.update(:lightsaber => 'pink')
  
# end

p = Padawan.find(8)



