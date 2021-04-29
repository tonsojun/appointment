json.extract! schedule, :id, :user_id, :meeting_id, :room_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
