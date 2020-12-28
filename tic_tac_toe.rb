$current_board = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

def board_display
  puts " #{$current_board[0][0]} " "|" " #{$current_board[0][1]} " "|" " #{$current_board[0][2]}  "
  puts separator = "-----------"
  puts " #{$current_board[1][0]} " "|" " #{$current_board[1][1]} " "|" " #{$current_board[1][2]}  "
  puts separator
  puts " #{$current_board[2][0]} " "|" " #{$current_board[2][1]} " "|" " #{$current_board[2][2]}  "
end

def player_x_selection
  puts "Crosses Turn! "
  x_choice = gets.chomp.to_i
  board_check(x_choice, "x")
  puts board_display
  if x_win? == true
    return
  else player_o_selection
  end
end

def player_o_selection
  puts "Naughts Turn!"
  o_choice = gets.chomp.to_i
  board_check(o_choice, "o")
  if board_check(x_choice, "o") == false
    puts "Please enter a number between 1 and 9, that hasn't already been taken"
    player_o_selection
  end
  puts board_display
  if o_win? == true
    return
  else player_x_selection
  end
end

def board_check(choice, user)
  case choice
  when 1
    if $current_board[0][0] == 1 and user == "x"
        $current_board[0][0] = "X"
        $current_board[3][0] = "X"
        $current_board[6][0] = "X"

    elsif $current_board[0][0] == 1 and user == "o"
        $current_board[0][0] = "O"
        $current_board[3][0] = "O"
        $current_board[6][0] = "O"

    else
      false
    end
  when 2
    if $current_board[0][1] == 2 and user == "x"
        $current_board[0][1] = "X"
        $current_board[4][0] = "X"
    elsif $current_board[0][1] == 2 and user == "o"
        $current_board[0][1] = "O"
        $current_board[4][0] = "O"
    else
      false
    end
  when 3
    if $current_board[0][2] == 3 and user == "x"
        $current_board[0][2] = "X"
        $current_board[5][0] = "X"
        $current_board[7][0] = "X"
    elsif $current_board[0][2] == 3 and user == "o"
        $current_board[0][2] = "O"
        $current_board[5][0] = "O"
        $current_board[7][0] = "O"
    else
      false
    end
  when 4
    if $current_board[1][0] == 4 and user == "x"
        $current_board[1][0] = "X"
        $current_board[3][1] = "X"
    elsif $current_board[1][0] == 4 and user == "o"
        $current_board[1][0] = "O"
        $current_board[3][1] = "O"

    else
      false
    end
  when 5
    if $current_board[1][1] == 5 and user == "x"
        $current_board[1][1] = "X"
        $current_board[4][1] = "X"
        $current_board[6][1] = "X"
        $current_board[7][1] = "X"


    elsif $current_board[1][1] == 5 and user == "o"
        $current_board[1][1] = "O"
        $current_board[4][1] = "O"
        $current_board[6][1] = "O"
        $current_board[7][1] = "O"

    else
      false
    end
  when 6
    if $current_board[1][2] == 6 and user == "x"
        $current_board[1][2] = "X"
        $current_board[5][1] = "X"
    elsif $current_board[1][2] == 6 and user == "o"
        $current_board[1][2] = "O"
        $current_board[5][1] = "O"
    else
      false
    end
  when 7
    if $current_board[2][0] == 7 and user == "x"
        $current_board[2][0] = "X"
        $current_board[3][2] = "X"
        $current_board[7][2] = "X"

    elsif $current_board[2][0] == 7 and user == "o"
        $current_board[2][0] = "O"
        $current_board[3][2] = "O"
        $current_board[7][2] = "O"

    else
      false
    end
  when 8
    if $current_board[2][1] == 8 and user == "x"
        $current_board[2][1] = "X"
        $current_board[4][2] = "X"
    elsif $current_board[2][1] == 8 and user == "o"
        $current_board[2][1] = "O"
        $current_board[4][2] = "O"

    else
      false
    end
  when 9
    if $current_board[2][2] == 9 and user == "x"
        $current_board[2][2] = "X"
        $current_board[5][2] = "X"
        $current_board[6][2] = "X"

    elsif $current_board[2][2] == 9 and user == "o"
        $current_board[2][2] = "O"
        $current_board[5][2] = "O"
        $current_board[6][2] = "O"
    else
      false
    end
  else
    false
  end
end


def x_win?
  x_win = ["X", "X", "X"]

  case x_win
  when $current_board[0], $current_board[1], $current_board[2], $current_board[3], $current_board[4], $current_board[5], $current_board[6], $current_board[7]
    puts "X Wins!"
    true
  end
end
def o_win?
  o_win = ["O", "O", "O"]
  case o_win
  when $current_board[0], $current_board[1], $current_board[2], $current_board[3], $current_board[4], $current_board[5], $current_board[6], $current_board[7]
    puts "O Wins!"
    true
  end
end

def start_game
  puts "Welcome to my game! This is just a two player game of Tic-Tac-Toe, or Naughts and Crosses. Please find the board below, you just need to enter a number between 1 and 9 to pick a square."
  puts board_display
  player_x_selection
end

def play_again?
  puts "Do you want to play again? Type Yes or No"
  again_choice = gets.chomp.downcase
  if again_choice == "yes"
    $current_board = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
    start_game
  elsif again_choice == "no"
    puts ":("
  else 
    puts "I'm sorry, I do not understand"
    play_again?
  end
end

start_game

