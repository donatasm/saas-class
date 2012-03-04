
class WrongNumberOfPlayersError < StandardError
end


class NoSuchStrategyError < StandardError
end


def rps_game_winner(game)
  if !game or game.length != 2
    raise WrongNumberOfPlayersError
  end
  strategy = { "S" => "P", "R" => "S", "P" => "R" }
  player1 = game[0]
  player2 = game[1]
  player1_strategy = player1[1].upcase
  player2_strategy = player2[1].upcase
  if !strategy.keys.include?(player1_strategy) or !strategy.keys.include?(player2_strategy)
    raise NoSuchStrategyError
  end
  if player1_strategy == player2_strategy
    return player1
  end
  if strategy[player1_strategy] == player2_strategy
    return player1
  end
  if strategy[player2_strategy] == player1_strategy
    return player2
  end
end

def rps_tournament_winner(tournament)
  if tournament[0][0].class == String and tournament[0][1].class == String
    return rps_game_winner(tournament)
  end
  winner1 = rps_tournament_winner(tournament[0])
  winner2 = rps_tournament_winner(tournament[1])
  return rps_game_winner([winner1, winner2])
end
