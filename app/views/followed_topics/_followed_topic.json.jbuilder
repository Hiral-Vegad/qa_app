json.extract! followed_topic, :id, :follower_id, :topic_id, :created_at, :updated_at
json.url followed_topic_url(followed_topic, format: :json)
