class Insurance < ApplicationRecord
  belongs_to :user
  validates :company, :policy_number, presence: true
end
