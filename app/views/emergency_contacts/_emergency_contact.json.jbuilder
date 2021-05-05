json.extract! emergency_contact, :id, :name, :phone1, :phone2, :email, :profile_id, :created_at, :updated_at
json.url emergency_contact_url(emergency_contact, format: :json)
