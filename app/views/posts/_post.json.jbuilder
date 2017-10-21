json.extract! post, :id, :postid, :clubid, :title, :description, :created_at, :updated_at
json.url post_url(post, format: :json)
