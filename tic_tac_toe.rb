$current_board = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

def board_display
  puts " #{$current_board[0][0]} " "|" " #{$current_board[0][1]} " "|" " #{$current_board[0][2]}  "
  puts separator = "-----------"
  puts " #{$current_board[1][0]} " "|" " #{$current_board[1][1]} " "|" " #{$current_board[1][2]}  "
  puts separator
  puts " #{$current_board[2][0]} " "|" " #{$current_board[2][1]} " "|" " #{$current_board[2][2]}  "
end

def player_x_selection
  puts "Please enter the number that matches the square of your choice "
  x_choice = gets.chomp.to_i
  board_check(x_choice, "x")
  puts board_display
  if x_win? == true
    return
  else player_o_selection
  end
end

def player_o_selection
  puts "Please enter the number that matches the square of your choice "
  o_choice = gets.chomp.to_i
  board_check(o_choice, "o")
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
        
    elsif $current_board[0][0] == 1 and user == "o"
        $current_board[0][0] = "O"
    else
      false
    end
  when 2
    if $current_board[0][1] == 2 and user == "x"
        $current_board[0][1] = "X"
    elsif $current_board[0][1] == 2 and user == "o"
        $current_board[0][1] = "O"
    else
      false
    end
  when 3
    if $current_board[0][2] == 3 and user == "x"
        $current_board[0][2] = "X"
    elsif $current_board[0][2] == 3 and user == "o"
        $current_board[0][2] = "O"
    else
      false
    end
  when 4
    if $current_board[1][0] == 4 and user == "x"
        $current_board[1][0] = "X"
    elsif $current_board[1][0] == 4 and user == "o"
        $current_board[1][0] = "O"
    else
      false
    end
  when 5
    if $current_board[1][1] == 5 and user == "x"
        $current_board[1][1] = "X"
    elsif $current_board[1][1] == 5 and user == "o"
        $current_board[1][1] = "O"
    else
      false
    end
  when 6
    if $current_board[1][2] == 6 and user == "x"
        $current_board[1][2] = "X"
    elsif $current_board[1][2] == 6 and user == "o"
        $current_board[1][2] = "O"
    else
      false
    end
  when 7
    if $current_board[2][0] == 7 and user == "x"
        $current_board[2][0] = "X"
    elsif $current_board[2][0] == 7 and user == "o"
        $current_board[2][0] = "O"
    else
      false
    end
  when 8
    if $current_board[2][1] == 8 and user == "x"
        $current_board[2][1] = "X"
    elsif $current_board[2][1] == 8 and user == "o"
        $current_board[2][1] = "O"
    else
      false
    end
  when 9
    if $current_board[2][2] == 9 and user == "x"
        $current_board[2][2] = "X"
    elsif $current_board[2][2] == 9 and user == "o"
        $current_board[2][2] = "O"
    else
      false
    end
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
  puts board_display
  player_x_selection
end

start_game