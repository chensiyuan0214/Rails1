json.extract! instructor, :id, :first_name, :last_name, :email, :instructor_id, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
