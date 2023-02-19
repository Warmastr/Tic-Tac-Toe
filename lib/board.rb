class Board
  attr_accessor :board
  def initialize
    @board = [""] * 9
  end

  def to_s
    separator = "-----------"

    <<~BOARD
          1   2   3
      1    #{@board[0]} | #{@board[1]}  | #{@board[2]} 
         #{separator}
      2    #{@board[3]} | #{@board[4]}  | #{@board[5]} 
         #{separator}
      3    #{@board[6]} | #{@board[7]}  | #{@board[8]}
    BOARD
  end
end
