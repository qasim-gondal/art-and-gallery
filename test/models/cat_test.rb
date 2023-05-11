require "test_helper"

class CatTest < ActiveSupport::TestCase
  test "cat should be valid" do
    @cat = Cat.new(name: "moew")
    assert @cat.valid?
  end
end
