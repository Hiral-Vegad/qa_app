class CreateFollowedTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :followed_topics do |t|
      t.references :follower, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
