json.extract! profile, :id, :first_name, :middle_name, :last_name, :birth, :marital_status, :home_phone, :cell_phone, :gender, :license, :drivers_license, :specialty_id, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
