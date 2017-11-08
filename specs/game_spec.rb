require('minitest/autorun')
require('minitest/rg')
require_relative('../game.rb')
require_relative('../player.rb')
require_relative('../hiddenword.rb')

class TestGame < MiniTest::Test

  def setup()
    @player = Player.new('Anna')
    @hiddenword = HiddenWord.new('Watermelon')
    @game = Game.new(@player, @hiddenword)
  end

  def test_game_player
    assert_equal('Anna', @game.player.name)
  end

  def test_game_hiddenword
    assert_equal('Watermelon', @game.hiddenword.word)
  end

  def test_game_guessed_letters
    assert_equal(0, @game.guessed_letters.count)
  end

  def test_make_a_guess
    @game.make_a_guess(@hiddenword,'a')
    assert_equal(1,@game.guessed_letters.count)
  end

  def test_check_guess__true
    assert_equal(true, @game.make_a_guess(@hiddenword, 'a'))
  end

  def test_check_guess__false
    assert_equal(false, @game.make_a_guess(@hiddenword, 'p'))
  end

  def test_display__a
    assert_equal("*a********", @game.display(@hiddenword, 'a'))
  end

  def test_display__e
    assert_equal("***e**e***", @game.display(@hiddenword, 'e'))
  end





end
