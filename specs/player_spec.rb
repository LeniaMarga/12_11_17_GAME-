require('minitest/autorun')
require('minitest/rg')
require_relative('../player.rb')

class TestPlayer < MiniTest::Test

  def setup()
    @player = Player.new('Anna')
  end

  def test_player_name
    assert_equal('Anna', @player.name)
  end

  def test_player_lives
    assert_equal(6, @player.number_of_lives)
  end

end
