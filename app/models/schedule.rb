class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :meeting
  belongs_to :room
end
