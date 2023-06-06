require "application_system_test_case"

class FollowedTopicsTest < ApplicationSystemTestCase
  setup do
    @followed_topic = followed_topics(:one)
  end

  test "visiting the index" do
    visit followed_topics_url
    assert_selector "h1", text: "Followed topics"
  end

  test "should create followed topic" do
    visit followed_topics_url
    click_on "New followed topic"

    fill_in "Follower", with: @followed_topic.follower_id
    fill_in "Topic", with: @followed_topic.topic_id
    click_on "Create Followed topic"

    assert_text "Followed topic was successfully created"
    click_on "Back"
  end

  test "should update Followed topic" do
    visit followed_topic_url(@followed_topic)
    click_on "Edit this followed topic", match: :first

    fill_in "Follower", with: @followed_topic.follower_id
    fill_in "Topic", with: @followed_topic.topic_id
    click_on "Update Followed topic"

    assert_text "Followed topic was successfully updated"
    click_on "Back"
  end

  test "should destroy Followed topic" do
    visit followed_topic_url(@followed_topic)
    click_on "Destroy this followed topic", match: :first

    assert_text "Followed topic was successfully destroyed"
  end
end
