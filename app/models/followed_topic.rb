class FollowedTopic < ApplicationRecord
  belongs_to :follower, class_name: 'User'
  belongs_to :topic
end
