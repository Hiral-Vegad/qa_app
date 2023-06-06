require "application_system_test_case"

class FollowedUsersTest < ApplicationSystemTestCase
  setup do
    @followed_user = followed_users(:one)
  end

  test "visiting the index" do
    visit followed_users_url
    assert_selector "h1", text: "Followed users"
  end

  test "should create followed user" do
    visit followed_users_url
    click_on "New followed user"

    fill_in "Followee", with: @followed_user.followee_id
    fill_in "Follower", with: @followed_user.follower_id
    click_on "Create Followed user"

    assert_text "Followed user was successfully created"
    click_on "Back"
  end

  test "should update Followed user" do
    visit followed_user_url(@followed_user)
    click_on "Edit this followed user", match: :first

    fill_in "Followee", with: @followed_user.followee_id
    fill_in "Follower", with: @followed_user.follower_id
    click_on "Update Followed user"

    assert_text "Followed user was successfully updated"
    click_on "Back"
  end

  test "should destroy Followed user" do
    visit followed_user_url(@followed_user)
    click_on "Destroy this followed user", match: :first

    assert_text "Followed user was successfully destroyed"
  end
end
