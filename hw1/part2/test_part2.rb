
require 'test/unit'
require 'part2'


class TestPart2A < Test::Unit::TestCase

  def test_rps_game_winner_one_player_throws_WrongNumberOfPlayersError
    game = [["Player1", "S"]]
    assert_raise WrongNumberOfPlayersError do
      rps_game_winner(game)
    end
  end
  
  def test_rps_game_winner_game_nil_throws_WrongNumberOfPlayersError
    assert_raise WrongNumberOfPlayersError do
      rps_game_winner(nil)
    end
  end
  
  def test_rps_game_winner_wrong_strategy_throws_NoSuchStrategyError
    assert_raise NoSuchStrategyError do
      game = [["Player1", "X"], ["Player2", "S"]]
      rps_game_winner(game)
    end
  end
  
  def test_rps_game_winner_scissors_beats_paper
    game = [["Player1", "S"], ["Player2", "P"]]
    assert_equal(["Player1", "S"], rps_game_winner(game))
  end
  
  def test_rps_game_winner_paper_beats_rock
    game = [["Player1", "R"], ["Player2", "P"]]
    assert_equal(["Player2", "P"], rps_game_winner(game))
  end
  
  def test_rps_game_winner_rock_beats_scissors
    game = [["Player1", "R"], ["Player2", "S"]]
    assert_equal(["Player1", "R"], rps_game_winner(game))
  end
  
  def test_rps_game_winner_scissors_beats_paper_case_insensitive
    game = [["Player1", "s"], ["Player2", "P"]]
    assert_equal(["Player1", "s"], rps_game_winner(game))
  end
  
  def test_rps_game_winner_strategies_equal_first_player_wins
    game = [["Player1", "s"], ["Player2", "s"]]
    assert_equal(["Player1", "s"], rps_game_winner(game))
  end
  
end


class TestPart2B < Test::Unit::TestCase

  def test_rps_tournament_winner_richard
    tournament = [
                    [
                      [ ["Armando", "P"], ["Dave", "S"] ],
                      [ ["Richard", "R"], ["Michael", "S"] ],
                    ],
                    [ 
                      [ ["Allen", "S"], ["Omer", "P"] ],
                      [ ["David E.", "R"], ["Richard X.", "P"] ]
                    ]
                 ]
    assert_equal(["Richard", "R"], rps_tournament_winner(tournament))
  end
  
  def test_rps_tournament_two_players
    tournament = [ ["Armando", "P"], ["Dave", "S"] ]
    assert_equal(["Dave", "S"], rps_tournament_winner(tournament))
  end

end
