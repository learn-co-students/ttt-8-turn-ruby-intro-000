def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(userInput)
  userInput.to_i-1
end

def move(board, indx, char ="X")
  board[indx]=char
end

# code your #valid_move? method here
def valid_move?(board, indx)
  if indx>=0 && indx<board.length && !position_taken?(board,indx)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, indx)
  #notice errors with nil and .strip
  if board[indx]==nil
    false
  elsif board[indx].strip== ""
    false
  else
    true
  end
end


def turn (board)
  puts "Please enter 1-9:"
  indx=input_to_index(gets.strip)
  if valid_move?(board, indx)
    move(board, indx)
    display_board (board)
  else
    until valid_move?(board, indx)
      puts "Please enter 1-9:"
      indx=input_to_index(gets.strip)
    end
  end
end
