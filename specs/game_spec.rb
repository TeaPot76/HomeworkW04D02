require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def test_play_invalid_imput_computer()
    game = Game.new("rock", "dom")
    assert_equal("Invalid imput", game.play())
  end

  def test_play_invalid_imput_player()
      game = Game.new("dom", "rock")
      assert_equal("Invalid imput", game.play())
  end

  def test_play_invalid_imput_both()
      game = Game.new("dom", "house")
      assert_equal("Invalid imput", game.play())
  end

  def test_play_draw_rock_rock()
    game = Game.new("rock", "rock")
    assert_equal("Draw", game.play())
  end

  def test_play_draw_scissors_scissors()
    game = Game.new("scissors", "scissors")
    assert_equal("Draw", game.play())
  end

  def test_play_draw_paper_paper()
    game = Game.new("paper", "paper")
    assert_equal("Draw", game.play())
  end

  def test_play_computer_wins_rock_paper()
    game = Game.new("rock", "paper")
    assert_equal("Computer wins!", game.play())
  end

  def test_play_computer_wins_scissors_rock()
    game = Game.new("scissors", "rock")
    assert_equal("Computer wins!", game.play())
  end

  def test_play_computer_wins_paper_scissors()
    game = Game.new("paper", "scissors")
    assert_equal("Computer wins!", game.play())
  end

  def test_play_player_wins_paper_rock()
    game = Game.new("paper", "rock")
    assert_equal("You win!", game.play())
  end

  def test_play_player_wins_scissors_paper()
    game = Game.new("scissors", "paper")
    assert_equal("You win!", game.play())
  end

  def test_play_player_wins_rock_scissors()
    game = Game.new("rock", "scissors")
    assert_equal("You win!", game.play())
  end

end
