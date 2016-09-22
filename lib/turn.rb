def turn (board)
  loop do
    puts "Please enter 1-9:"
    new_move = gets.strip
    index = input_to_index(new_move)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
      break
    end
  end
end

def display_board(board = [" " " " " " " " " " " " " " " " " "])
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
    puts "-----------"
end

# code your #valid_move? method here
def valid_move? (board, index)
  if position_taken?(board, index) || index > 8 || index < 0
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if board[index] == " "
    return false
  elsif board [index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index (new_move)
  return new_move.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end
