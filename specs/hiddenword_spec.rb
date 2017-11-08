require('minitest/autorun')
require('minitest/rg')
require_relative('../hiddenword.rb')
require_relative('../game.rb')
require_relative('../player.rb')

class TestHiddenWord < MiniTest::Test

  def setup()
    @player = Player.new('Anna')
    @hiddenword = HiddenWord.new('Watermelon')
    @game = Game.new(@player, @hiddenword)
  end

 def test_word
   assert_equal('Watermelon', @hiddenword.word )
 end

end
