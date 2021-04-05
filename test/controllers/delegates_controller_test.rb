require "test_helper"

class DelegatesControllerTest < ActionDispatch::IntegrationTest
  test "should get pipe_store" do
    get delegates_pipe_store_url
    assert_response :success
  end
end
