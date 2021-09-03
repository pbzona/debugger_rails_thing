require "test_helper"

class FlagTestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flag_test_index_url
    assert_response :success
  end
end
