require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection("postgres://localhost/class05_homework")

# go...

# padawans (tablename snake_case_plural)
# Padawan (class name CamelCaseSingular)

class Dog < ActiveRecord::Base

  validates :name, presence: true
  validates :age, presence: true, numericality: true
  validate :puppy_must_have_cute_name

  def puppy_must_have_cute_name
    if is_puppy? && name[-1] != 'y' && self.name[-2,2] != 'ie')
      errors.add(:age, "is not sufficiently adorable")
    end
  end

  def age_in_dog_years
    age * 7
  end

  def is_puppy?
    age < 2
  end

  def age!
    self.age += 1
    save
  end

end

binding.pry