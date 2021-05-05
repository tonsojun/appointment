class Profile < ApplicationRecord
  belongs_to :specialty
  belongs_to :user
  has_one :emergency_contact
  validates :first_name, presence: true
end
