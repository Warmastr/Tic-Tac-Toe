class Board
  attr_accessor :board
  def initialize
    @board = ['', '', '', '', '', '', '', '', '']
  end

  def display_board
    row(1)
    row(2)
    row(3)
    puts self
  end

  def to_s
    separator = "-----------"

    <<~BOARD
        1   2   3
    A    #{@board[0]} | #{@board[1]}  | #{@board[2]} 
       #{separator}
    B    #{@board[3]} | #{@board[4]}  | #{@board[5]} 
       #{separator}
    C    #{@board[6]} | #{@board[7]}  | #{@board[8]}
    BOARD
  end

  def []=(index, value)
    @board[index] = value
  end

  private

  def row(row_number)
    @board.each_slice(3).to_a[row_number]
  end
end