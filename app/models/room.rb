class Room < ApplicationRecord
  belongs_to :users
  has_many :schedule
end
