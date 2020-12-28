class TicTactoe
  attr_accessor :board

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  WINNING_COMBOS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [2, 4, 6],
    [0, 4, 8],
  ]

  def board_display
    puts "  #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts " ----------- "
    puts "  #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts "  #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(position, token = 'X')
    @board[position] = token
  end
  
end