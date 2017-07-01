# code your #valid_move? method here
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  num = index.to_i + 1
  if !position_taken?(board,index) && num.between?(1,9)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

# code your input_to_index and move method here!
def input_to_index(index)
  input=index.to_i - 1
end

def move(board, index, char="X")
  board[index]=char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    until valid_move?(board, index)
      input = gets.chomp
      index = input_to_index(input)
    end
    move(board, index)
    display_board(board)
  end
end
