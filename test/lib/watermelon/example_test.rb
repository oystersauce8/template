require 'test_helper'

class WatermelonTest < ActiveSupport::TestCase

  include Watermelon

  test "example1" do
    myresult = example1
    #assert Watermelon::Example.example1 == true
    assert myresult == 'example1'
  end
end
