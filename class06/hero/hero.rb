require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection("postgres://localhost/heros")

class Hero < ActiveRecord::Base
end 



binding.pry


# h = Hero.new(:name => 'Aquaman',:alter_ego => 'fish dude', :has_cape => false, :power => 'talks to fish', :arch_nemesis => 'sun')
# Hero.find_by(:alter_ego => 'Bruce Wayne')
# Hero.find_by(:name => 'Captain America')
# Hero.where(:has_cape => true)
# Hero.where(:power => 'strength')

# h = Hero.find(4)
# h.update(:has_cape => true)

# h = Hero.find_by(:name => 'Professor X')
# h.delete


