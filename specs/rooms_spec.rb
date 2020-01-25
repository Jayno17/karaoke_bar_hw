require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")

class TestRooms < Minitest::Test

def setup
  @room1 = Room.new("Room 1", 6, 0, [])
end

def test_room_name()
  assert_equal("Room 1", @room1.name)
end

def test_number_of_places()
  assert_equal(6, @room1.number_of_places)
end

def test_number_of_guests()
  assert_equal(0, @room1.number_of_guests)
end

end
