require('minitest/autorun')
require('minitest/rg')
require_relative('../player.rb')
require_relative('../game.rb')
require_relative('../hiddenword.rb')

class TestPlayer < MiniTest::Test

  def setup()
    @player = Player.new('Anna')
    @hiddenword = HiddenWord.new('Watermelon')
    @game = Game.new(@player, @hiddenword)
  end

  def test_player_name
    assert_equal('Anna', @player.name)
  end

  def test_player_lives
    assert_equal(6, @player.number_of_lives)
  end

  def test_decrease_life
    @player.decrease_life(@game, @hiddenword, "p")
    assert_equal(5, @player.number_of_lives)
  end

end
