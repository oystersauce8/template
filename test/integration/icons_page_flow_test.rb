require 'test_helper'

class IconsPageFlowTest < ActionDispatch::IntegrationTest
  test "can browse the available icons" do
    get "/pages/verify_fontawesome"
    assert_response :success
  end
end
