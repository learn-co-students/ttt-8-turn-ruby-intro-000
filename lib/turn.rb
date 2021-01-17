def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8)
    if !position_taken?(board,index)
      true
    end
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || "O"
    true
  end
end

def input_to_index(input)
  index = (input.to_i) - 1
end

def move(board, index, token="X")
  board[index] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
