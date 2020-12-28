BOARD = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

def board_display
  puts " #{BOARD[0][0]} " "|" " #{BOARD[0][1]} " "|" " #{BOARD[0][2]}  "
  puts separator = "-----------"
  puts " #{BOARD[1][0]} " "|" " #{BOARD[1][1]} " "|" " #{BOARD[1][2]}  "
  puts separator
  puts " #{BOARD[2][0]} " "|" " #{BOARD[2][1]} " "|" " #{BOARD[2][2]}  "
end

puts board_display
