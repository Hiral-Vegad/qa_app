class Topic < ApplicationRecord
  has_many :followed_topics, foreign_key: :topic_id, class_name: 'FollowedTopic'
  has_many :followers, through: :followed_topics, source: :follower
end
