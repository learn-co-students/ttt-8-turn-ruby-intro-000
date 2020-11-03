board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, input_to_index, character = "X")
  board[input_to_index] = character
end

def valid_move?(board, index)

    if board[index] == "X" || board[index] == "O" || board[index] == nil
    return false
   end
 index.between?(0,8)
end

def position_taken?(board, index)
  if board[index] != "X" || board[index] != "O"
  return true
  
 end
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip

index = input_to_index(user_input)
if valid_move?(board,index)
    move(board, index)
else 
  puts "Invalid Move, Enter 1-9:"
  turn(board)
end
display_board(board)
end
