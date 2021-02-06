class TicTacToe
  attr_accessor :board

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  WINNING_COMBOS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [2, 4, 6],
    [0, 4, 8]
  ]

  def board_display
    puts "  #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts ' ----------- '
    puts "  #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts ' ----------- '
    puts "  #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(position, token = 'X')
    @board[position] = token
  end

  def position_taken?(input)
    @board[input] == 'X' or @board[input] == 'O'
  end

  def valid_move?(input)
    input.between?(0, 8) and position_taken?(input) == false
  end

  def turn
    puts 'Choose a position between 1 and 9'
    position = gets.strip
    position = input_to_index(position)
    if valid_move?(position)
      move(position, current_player)
    else
      puts "oops! That's invalid move, please try again"
      turn
    end
    board_display
  end

  def turn_count
    taken = 0
    @board.each do |i|
      taken += 1 if %w[X O].include?(i)
    end
    taken
  end

  def current_player
    if turn_count.even?
      'X'
    else
      'O'
    end
  end

  def won?
    WINNING_COMBOS.find do |combo|
      @board[combo[0]] == @board[combo[1]] and
        @board[combo[1]] == @board[combo[2]] and
        position_taken?(combo[0])
    end
  end

  def full?
    turn_count == 9
  end

  def draw?
    !won? and full?
  end

  def over?
    won? or full? or draw?
  end

  def winner
    if winner = won?
      @board[winner.first]
    end
  end

  def play
    turn until over?

    if won?
      winner = winner()
      puts "#{winner} Wins!"
      play_again?
    elsif draw?
      puts "It's a draw!"
    end
  end

  def play_again?
    puts 'Do you want to play again? [Yes] or [No]'
    again = gets.strip.downcase
    if again == 'yes'
      game_start
    else
      puts ':('
    end
  end
end

def game_start
  game = TicTacToe.new
  game.play
end

game_start
