json.extract! note, :id, :comments, :user_id, :meeting_id, :created_at, :updated_at
json.url note_url(note, format: :json)
