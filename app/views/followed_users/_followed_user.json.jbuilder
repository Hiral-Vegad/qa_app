json.extract! followed_user, :id, :follower_id, :followee_id, :created_at, :updated_at
json.url followed_user_url(followed_user, format: :json)
