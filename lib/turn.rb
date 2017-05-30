board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  board = [" #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "]
  puts board
end

def valid_move?(board, index)
  if index.between?(0,8) && (position_taken?(board, index) == false)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

userinput = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

def input_to_index(input)
  input.to_i - 1
end

def move (board, index, value = "X")
  board[index] = value
end

# def turn(board)
#   puts "Please enter 1-9:"
#   input = gets.strip
#   index = input_to_index(input)
#   if valid_move?(board, index)
#     move(board, index)
#     display_board(board)
#   else
#     turn(board)
#   end
# end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board, index)
    puts "Pleaser enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end
