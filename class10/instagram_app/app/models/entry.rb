class Entry < ActiveRecord::Base
  validates :author, presence: true
  valideates :photo_url, presence: true
  validates :date_taken, presence: true 
end