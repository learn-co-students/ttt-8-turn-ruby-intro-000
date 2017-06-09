def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(location)
  location = location.to_i - 1
end
def move( board, location, player = "X")
  board[location] = player
  display_board(board)
end
# code your #valid_move? method here
def valid_move?(board, index)

  if index>=0 && index<9
    return !position_taken?(board, index)
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index]=="X" || board[index]=="O"
    return true
  else
    return false
  end
end
# play turn
def turn(board, player = "X")
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move( board, input, player)
  else
    turn(board,  player)
  end
end
