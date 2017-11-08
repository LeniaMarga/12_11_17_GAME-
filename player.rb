class Player
  attr_reader :number_of_lives
  attr_accessor :name

  def initialize (name)
    @name = name
    @number_of_lives = 6
  end

  def decrease_life(game, game_word, letter)
    if game.make_a_guess(game_word, letter) == false
      @number_of_lives -= 1
    end
  end

end
