class Meeting < ApplicationRecord
  belongs_to :user
  has_many :schedule
  validates :start, :description, :active, presence: true

  def self.physician_schedule(id)
    Schedule.create(user_id: User.third.id, meeting_id: id, room_id: Room.all.sample.id) 
  end

  # add start and end time for meeting
  def pending_meeting
    where(status: true)
  end


  # meeting cannot be created the same day
  def end_meeting
  
  end

  # render error if time is already occupied
end


# tommorow = (Date.today + 1.day).strftime("%d")
# meetings = self.where(start: tommorow)
# p meetings
# first.start.strftime("%d") == (Date.today + 1.day).strftime("%d")
# 8 < start