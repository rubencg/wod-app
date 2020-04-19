require 'test_helper'

class WodLogControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get wod_log_create_url
    assert_response :success
  end

  test "should get show" do
    get wod_log_show_url
    assert_response :success
  end

end
