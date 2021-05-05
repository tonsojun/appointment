json.extract! clinic, :id, :name, :street_address, :city, :zip, :created_at, :updated_at
json.url clinic_url(clinic, format: :json)
