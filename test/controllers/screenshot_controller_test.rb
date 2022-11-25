require "test_helper"

class ScreenshotControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get screenshot_index_url
    assert_response :success
  end

  test "should get show" do
    get screenshot_show_url
    assert_response :success
  end
end
