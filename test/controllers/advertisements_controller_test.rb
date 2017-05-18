require 'test_helper'

class AdvertisementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get advertisement_new_url
    assert_response :success
  end

  test "should get create" do
    get advertisement_create_url
    assert_response :success
  end

  test "should get update" do
    get advertisement_update_url
    assert_response :success
  end

  test "should get edit" do
    get advertisement_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get advertisement_destroy_url
    assert_response :success
  end

  test "should get index" do
    get advertisement_index_url
    assert_response :success
  end

  test "should get show" do
    get advertisement_show_url
    assert_response :success
  end

end
