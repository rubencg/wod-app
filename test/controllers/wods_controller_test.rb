require 'test_helper'

class WodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wod = wods(:one)
  end

  test "should get index" do
    get wods_url
    assert_response :success
  end

  test "should get new" do
    get new_wod_url
    assert_response :success
  end

  test "should create wod" do
    assert_difference('Wod.count') do
      post wods_url, params: { wod: { description: @wod.description, is_main: @wod.is_main, notes: @wod.notes, title: @wod.title, week_name: @wod.week_name } }
    end

    assert_redirected_to wod_url(Wod.last)
  end

  test "should show wod" do
    get wod_url(@wod)
    assert_response :success
  end

  test "should get edit" do
    get edit_wod_url(@wod)
    assert_response :success
  end

  test "should update wod" do
    patch wod_url(@wod), params: { wod: { description: @wod.description, is_main: @wod.is_main, notes: @wod.notes, title: @wod.title, week_name: @wod.week_name } }
    assert_redirected_to wod_url(@wod)
  end

  test "should destroy wod" do
    assert_difference('Wod.count', -1) do
      delete wod_url(@wod)
    end

    assert_redirected_to wods_url
  end
end
