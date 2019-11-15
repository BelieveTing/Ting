require 'test_helper'

class MakeFriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get make_friends_new_url
    assert_response :success
  end

  test "should get create" do
    get make_friends_create_url
    assert_response :success
  end

  test "should get profile" do
    get make_friends_profile_url
    assert_response :success
  end

  test "should get edit" do
    get make_friends_edit_url
    assert_response :success
  end

  test "should get update" do
    get make_friends_update_url
    assert_response :success
  end

  test "should get destroy" do
    get make_friends_destroy_url
    assert_response :success
  end

end
