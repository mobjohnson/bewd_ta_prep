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

def solicit_input
  puts
  puts "Welcome to the MOMA App!"
  puts
  puts "Please select one of the following options:"
  puts "  (I) Index - List all Artists"
  puts "  (C) Add an Artist"
  puts "  (R) View all info for a specific artist, including their paintings"
  puts "  (U) Update an Artist"
  puts "  (D) Remove an Artist"
  puts "  (X) Exit"
  input = gets.chomp.upcase
end


def list_artists
  puts "All artists:"
  artists = Artist.all
  artists.each do |artist|
    puts artist.name
  end
end

def add_artist
  puts "Artist name?"
  name = gets.chomp
  puts "Nationality?"
  nationality = gets.chomp
  Artist.create(name: name, nationality: nationality)
end

def run
  input = solicit_input
  case input
    when 'I'
      list_artists
    when 'C'
      add_artist
    when 'R'
      view_artist
    when 'U'
      update_artist
    when 'D'
      delete_artist
    when 'X'
      break 
    else
      puts "Please provide a valid capital letter!!"
    end      
    input = solicit_input
  end 
end

run





# binding.pry