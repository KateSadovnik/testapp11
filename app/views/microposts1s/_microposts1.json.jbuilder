json.extract! microposts1, :id, :content, :user_id, :created_at, :updated_at
json.url microposts1_url(microposts1, format: :json)
