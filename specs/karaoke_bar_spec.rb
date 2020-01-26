require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")
require_relative("../karaoke_bar")


class TestKaraokeBar < Minitest::Test

def setup
  @karaoke_bar = KaraokeBar.new(100, 15)
end

  def test_increase_till()
    assert_equal(115,@karaoke_bar.increase_till(15))
  end


end
