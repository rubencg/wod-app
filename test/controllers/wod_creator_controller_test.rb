require 'test_helper'

class WodCreatorControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get wod_creator_create_url
    assert_response :success
  end

end
