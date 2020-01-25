require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../rooms")

class TestGuests < Minitest::Test

def setup
  @guest1 = Guest.new("Paul", "")
  @guest2 = Guest.new("Alex", "")
end

def test_guest_name()
  assert_equal("Paul", @guest1.name)
end

end
