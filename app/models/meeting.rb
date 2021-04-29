class Meeting < ApplicationRecord
  belongs_to :user
  has_many :schedule
  validates :time, :description, :active, presence: true
end
