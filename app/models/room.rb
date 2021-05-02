class Room < ApplicationRecord
  has_many :schedule
  validates :number, presence: true 
end
