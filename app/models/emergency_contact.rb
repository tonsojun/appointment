class EmergencyContact < ApplicationRecord
  belongs_to :profile
  validates :name, :phone1, :email, presence: true
end
