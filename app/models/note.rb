class Note < ApplicationRecord
  belongs_to :user
  belongs_to :meeting
  validates :comments, presence: true
end
