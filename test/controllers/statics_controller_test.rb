require 'test_helper'

class StaticsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get statics_home_url
    assert_response :success
  end

  test "should get portfolio" do
    get statics_portfolio_url
    assert_response :success
  end

  test "should get competences" do
    get statics_competences_url
    assert_response :success
  end

  test "should get contact" do
    get statics_contact_url
    assert_response :success
  end

end
