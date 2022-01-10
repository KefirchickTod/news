require "test_helper"

class Authentication::SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get authentication_session_new_url
    assert_response :success
  end
end
