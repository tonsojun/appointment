class Meeting < ApplicationRecord
  belongs_to :user
  has_many :schedule
  validates :start, :description, :active, presence: true

  def self.physician_schedule(id)
    Schedule.create(user_id: User.third.id, meeting_id: id, room_id: Room.all.sample.id) 
  end
end
