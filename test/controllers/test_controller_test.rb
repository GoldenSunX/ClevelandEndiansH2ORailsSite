require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get something" do
    get test_something_url
    assert_response :success
  end

end
