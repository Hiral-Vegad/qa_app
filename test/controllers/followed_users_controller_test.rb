require "test_helper"

class FollowedUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @followed_user = followed_users(:one)
  end

  test "should get index" do
    get followed_users_url
    assert_response :success
  end

  test "should get new" do
    get new_followed_user_url
    assert_response :success
  end

  test "should create followed_user" do
    assert_difference("FollowedUser.count") do
      post followed_users_url, params: { followed_user: { followee_id: @followed_user.followee_id, follower_id: @followed_user.follower_id } }
    end

    assert_redirected_to followed_user_url(FollowedUser.last)
  end

  test "should show followed_user" do
    get followed_user_url(@followed_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_followed_user_url(@followed_user)
    assert_response :success
  end

  test "should update followed_user" do
    patch followed_user_url(@followed_user), params: { followed_user: { followee_id: @followed_user.followee_id, follower_id: @followed_user.follower_id } }
    assert_redirected_to followed_user_url(@followed_user)
  end

  test "should destroy followed_user" do
    assert_difference("FollowedUser.count", -1) do
      delete followed_user_url(@followed_user)
    end

    assert_redirected_to followed_users_url
  end
end
