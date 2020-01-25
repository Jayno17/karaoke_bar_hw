require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../songs")

class TestSongs < Minitest::Test

def setup
  @song1 = Song.new("Wannabe", "Spice Girls")
  @song2 = Song.new("Wonderwall", "Oasis")
end

def test_song_title()
  assert_equal("Wannabe", @song1.title)
end

end
