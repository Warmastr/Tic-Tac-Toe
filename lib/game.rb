class Game
  attr_accessor :location

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @board = Board.new
    puts @board
  end

  def play
    current_player = ""
    player_turn = 1 # player 1 plays on odd numbers
    puts @board
    puts "Place your marker on an empty location. \nType it like this:   \'11\', \'12\', \'31\' etc."
    # Create a loop based on 9 possible turns that starts with player 1.
    until @board.board.all?(/X|O/) || win_condition?() == true
      if player_turn % 2 == 0
        current_player = @player_2
      else
        current_player = @player_1
      end
      # all possible locations on the game board
      label_array = %w[11 12 13 21 22 23 31 32 33]
        puts "#{current_player} Place your marker!"
        location = gets.chomp.downcase
        if location.include?(location) == false
          puts "#{current_player} please only use numbers 1-3 that correspond to the location of the game board labels"
        elsif label_array.include?(location)
          temp_location = label_array.index(location)
          if @board.board[temp_location] == "X" || @board.board[temp_location] == "O"
            puts "#{current_player} Place your marker on an empty location. \nIt will look like   this: \'11\', \'12\', \'31\' etc."
            next
          else
            @board.board[temp_location] = current_player.token
          end
          clear
          puts @board
          player_turn += 1
          else
          puts "You must select a proper location (\'11\', \'23\', \'32\' etc.)"
          clear
          puts @board
          next
        end

      if win_condition?("X") == true
        puts "Congratulations #{current_player} you have won!"
        break
      elsif win_condition?("O") == true
        puts "Congratulations #{current_player} you have won!"
      elsif @board.board.all?(/X|O/) # board is full
        puts "\nNo one wins!\n"
      end
    end
  end

  def win_condition?(marker = "X")
    win_combos = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]           
    win_combos.any? do |combo|
      combo.all? do |index| 
        if @board.board[index] == marker
          true
        else
          false
        end
      end
    end
  end

  def clear
    print "\e[2J\e[H"
  end
end