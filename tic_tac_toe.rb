require './lib/board.rb'
require './lib/player.rb'
require './lib/token.rb'

board = Board.new
player_1_token = Token.new("X")
player_2_token = Token.new("O")

puts player_1_token

board[0] = 'o'
puts board

