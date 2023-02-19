require "./lib/board"
require "./lib/player"
require_relative "game"


puts "Player 1 enter your name: "
p1 = gets.chomp
puts "player_2 enter your name: "
p2 = gets.chomp
puts "#{p1} will be 'X' and #{p2} will be 'O', 'X''s go first!"

# Establishes the player and their tokens
player_1 = Player.new(p1, "X")
player_2 = Player.new(p2, "O")

# New game with the players from above
game = Game.new(player_1, player_2)
game.clear
game.play
