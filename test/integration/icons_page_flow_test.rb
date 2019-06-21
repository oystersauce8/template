require 'test_helper'

class IconsPageFlowTest < ActionDispatch::IntegrationTest
  test "can browse the available icons" do
    get "/pages/test_iconfonts"
    assert_response :success
  end
end
