json.extract! user, :id, :name, :twitter_id, :sex, :created_at, :updated_at
json.url user_url(user, format: :json)
