require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../rooms")
require_relative("../karaoke_bar")

class TestGuests < Minitest::Test

def setup
  @guest1 = Guest.new("Paul", "Hey Jude", 50)
  @guest2 = Guest.new("Alex", "Wannabe", 30)
  @karaoke_bar = KaraokeBar.new(100, 15)
end

def test_guest_name()
  assert_equal("Paul", @guest1.name)
end

def test_guest_wallet()
  assert_equal(30, @guest2.wallet)
end



end
