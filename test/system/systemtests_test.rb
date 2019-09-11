require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/pages/verify_fontawesome"
    assert_text "Here are some icon fonts"
    save_screenshot
  end
end
