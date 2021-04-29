class Address < ApplicationRecord
  belongs_to :user
  validates :street_address, :city, :state, :zip, presence: true
end
