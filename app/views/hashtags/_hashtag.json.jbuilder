json.extract! hashtag, :id, :content, :pic_id, :album_id, :user_id, :created_at, :updated_at
json.url hashtag_url(hashtag, format: :json)
