def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input) == true
    move(board, input, x='X')
    display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index(input)
  end
end


def valid_move?(board, index)
  if position_taken(board, index) == false && index.between?(0, 8)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def display_board(moves)
  puts " #{moves[0]} | #{moves[1]} | #{moves[2]} "
  puts "-----------"
  puts " #{moves[3]} | #{moves[4]} | #{moves[5]} "
  puts "-----------"
  puts " #{moves[6]} | #{moves[7]} | #{moves[8]} "
end


def input_to_index(input)
  input.to_i - 1
end


def move(board, index, x="X")
  board[index] = x
end
