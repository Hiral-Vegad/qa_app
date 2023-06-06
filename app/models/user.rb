class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable

  has_many :questions
  has_many :answers
  has_many :followed_users, foreign_key: :follower_id, class_name: 'FollowedUser'
  has_many :following, through: :followed_users, source: :followee
  has_many :followed_topics, foreign_key: :follower_id, class_name: 'FollowedTopic'
  has_many :topics, through: :followed_topics
end
