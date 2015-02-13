require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection("postgres://localhost/moma_db")

class Artist < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 1}, uniqueness: true
  validates :nationality, presence: true

  has_many :paintings, :dependent => :destroy
end

class Painting < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 1}
  validates_associated :artist

  belongs_to :artist
end


# binding.pry