json.extract! micropost, :id, :title, :discription, :created_at, :updated_at
json.url micropost_url(micropost, format: :json)
