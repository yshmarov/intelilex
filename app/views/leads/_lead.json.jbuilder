json.extract! lead, :id, :email, :comment, :created_at, :updated_at
json.url lead_url(lead, format: :json)
