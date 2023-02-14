require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_htmil.erb_url
    assert_response :success
  end
end
