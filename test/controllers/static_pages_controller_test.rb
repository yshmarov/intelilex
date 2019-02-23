require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get cancel" do
    get static_pages_cancel_url
    assert_response :success
  end

  test "should get completed" do
    get static_pages_completed_url
    assert_response :success
  end

  test "should get welcome" do
    get static_pages_welcome_url
    assert_response :success
  end

end
