require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")
require_relative("../karaoke_bar")


class TestKaraokeBar < Minitest::Test

def setup
  @karaoke_bar = KaraokeBar.new(["Room1", "Room2"],[], 100, 15, [])
  @guest = Guest.new("John", "Born To Run", 80)
end

  def test_increase_till()
    assert_equal(115,@karaoke_bar.increase_till(15))
  end

def test_take_money_from_guest()
  assert_equal(65, @karaoke_bar.take_money_from_guest(15))
  end

end
