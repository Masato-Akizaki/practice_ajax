json.extract! user, :id, :name, :private, :created_at, :updated_at
json.url user_url(user, format: :json)
