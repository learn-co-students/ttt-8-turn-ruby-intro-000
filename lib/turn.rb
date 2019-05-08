def display_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------"
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.chomp
  user_input = input.to_i
  if user_input >= 1 && user_input <= 9
    index = input_to_index(user_input)
    if valid_move?(board,index)
      move(board, index)
      display_board(board)
    end
  else
    turn(board)
  end

end

def input_to_index (user_input)
  user_input.to_i - 1
end

def move (board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  if position_taken?(board, index) || (index > 9 || index < 0)
    return false
  end
  true
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  end
  false
end
