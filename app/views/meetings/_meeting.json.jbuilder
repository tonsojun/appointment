json.extract! meeting, :id, :time, :description, :active, :user_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
