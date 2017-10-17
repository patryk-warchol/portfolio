require 'test_helper'

class SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get settings_index_url
    assert_response :success
  end

  test "should get show" do
    get settings_show_url
    assert_response :success
  end

  test "should get new" do
    get settings_new_url
    assert_response :success
  end

  test "should get edit" do
    get settings_edit_url
    assert_response :success
  end

end
