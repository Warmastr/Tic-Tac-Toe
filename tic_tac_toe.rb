require './lib/board.rb'
require './lib/player.rb'
require './lib/token.rb'

board = Board.new


board[0] = 'o'
puts board.display_board

