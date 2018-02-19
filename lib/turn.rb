# code your #valid_move? method here
def valid_move?(board, index)
  if index > board.length - 1 == true or index < 0 or position_taken?(board, index) == true
    return false
  elsif position_taken?(board, index) == false
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    return false
  elsif board[index] == "X" or board[index] == "O"
    return true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, pos, char="X")
  # postion... needs to be an index
  board[pos] = char

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  input = input_to_index(input)

  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end
