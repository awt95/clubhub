json.extract! user, :id, :userid, :surname, :forename, :username, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
