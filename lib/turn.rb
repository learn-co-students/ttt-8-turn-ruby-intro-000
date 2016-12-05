def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# code your #valid_move? method here
def valid_move?(board, input)
  index = input.to_i
  if position_taken?(board, index) || !(0..8).to_a.include?(index)
    return false
  else
    return true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, input)
  index = input.to_i
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end

end

def input_to_index(input)
  new = input.to_i - 1
  new
end

def move(board, index, char="X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
