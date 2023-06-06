require "test_helper"

class FollowedTopicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @followed_topic = followed_topics(:one)
  end

  test "should get index" do
    get followed_topics_url
    assert_response :success
  end

  test "should get new" do
    get new_followed_topic_url
    assert_response :success
  end

  test "should create followed_topic" do
    assert_difference("FollowedTopic.count") do
      post followed_topics_url, params: { followed_topic: { follower_id: @followed_topic.follower_id, topic_id: @followed_topic.topic_id } }
    end

    assert_redirected_to followed_topic_url(FollowedTopic.last)
  end

  test "should show followed_topic" do
    get followed_topic_url(@followed_topic)
    assert_response :success
  end

  test "should get edit" do
    get edit_followed_topic_url(@followed_topic)
    assert_response :success
  end

  test "should update followed_topic" do
    patch followed_topic_url(@followed_topic), params: { followed_topic: { follower_id: @followed_topic.follower_id, topic_id: @followed_topic.topic_id } }
    assert_redirected_to followed_topic_url(@followed_topic)
  end

  test "should destroy followed_topic" do
    assert_difference("FollowedTopic.count", -1) do
      delete followed_topic_url(@followed_topic)
    end

    assert_redirected_to followed_topics_url
  end
end
