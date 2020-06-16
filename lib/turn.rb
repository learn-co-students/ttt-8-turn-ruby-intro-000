

#Display a tic tac toe board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#convert user input to index by subtracting 1
def input_to_index(user_input)
"#{user_input}".to_i - 1
end

#checks the user_input to see if that position is taken and it is a valid number
def position_taken?(board, index)
    if board[index] == ' ' || board[index] == '' || board[index] == nil
        false
      else
        true
      end
    end

def valid_move?(board, index)
  if !position_taken?(board, index) && (index).between?(0,8)
    true
  else
    false
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
