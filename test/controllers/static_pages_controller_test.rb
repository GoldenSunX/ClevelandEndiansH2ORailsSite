require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get search" do
    get static_pages_search_url
    assert_response :success
  end

  test "should get data" do
    get static_pages_data_url
    assert_response :success
  end

  test "should get prayers" do
    get static_pages_prayers_url
    assert_response :success
  end

  test "should get comments" do
    get static_pages_comments_url
    assert_response :success
  end

end
