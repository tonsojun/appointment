class Room < ApplicationRecord
  belongs_to :users
  has_many :schedule
  validates :number, presence: true 
end
