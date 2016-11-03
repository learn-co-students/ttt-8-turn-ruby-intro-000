
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end


def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if !( position_taken?(board, index) ) && ( (index + 1).between?(1, 9) )
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  move_complete = false
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
    move_complete = true
  else
    turn(board)
  end
end
