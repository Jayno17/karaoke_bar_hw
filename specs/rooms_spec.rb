require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class TestRooms < Minitest::Test

def setup
  @room1 = Room.new("Room 1", 6, 0, [])
  @song3 = Song.new("Atomic", "Blondie")
  @song4 = Song.new("Hey Jude", "The Beatles")
  @room2 = Room.new("Room2", 7,6, [@song3, @song4])
end

def test_room_name()
  assert_equal("Room 1", @room1.name)
end

def test_capacity()
  assert_equal(6, @room1.capacity)
end

def test_number_of_guests()
  assert_equal(0, @room1.number_of_guests)
end

def test_check_in_guests()
  @room1.check_in_guests(4)
  assert_equal(4, @room1.number_of_guests)
  assert_equal(2, @room1.capacity)
end

def test_check_out_guests()
  @room2.check_out_guests(3)
  assert_equal(4,@room2.capacity)
  assert_equal(3, @room2.number_of_guests)
end

def test_song_count()
  assert_equal(0, @room1.song_count)
end

def test_add_songs_to_room()
  @room1.add_song_to_room(@song1)
  assert_equal(1, @room1.song_count)
end

def test_room_capacity__true
 @room1.check_in_guests(3)
 assert_equal(true, @room1.check_room_capacity(6))

end

 def test_room_capacity__false
   @room1.check_in_guests(20)
   assert_equal(false, @room1.check_room_capacity(6))
 end


end
