json.extract! post, :id, :clubid, :title, :description, :created_at, :updated_at
json.url post_url(post, format: :json)
