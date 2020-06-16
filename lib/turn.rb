def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  index = user_input - 1
  return index
end

def move(board, index , player = "X")
  return board[index] = player
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board,index)
    true
  else nil
 end
end

def position_taken?(board, index)
if board[index] == "X" || board[index] == "O"
  true
elsif board[index] == " "
  false
else board[index] == ""
  false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
