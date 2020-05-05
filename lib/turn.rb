def turn(board)
  puts "Please enter 1-9:"
  choice = gets.strip
  value = input_to_index(choice)
  if !(valid_move?(board, value))
    turn(board)
  end
  move(board, value)
  display_board(board)
end



def valid_move?(board, index)
  if !(index.between?(0,board.length()))
    return false
  elsif position_taken?(board, index)
    return false
  else
    return true
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index]== "" || board[index]== " " || board[index]== "  " || board[index]== "   " || board[index]== nil
    return false
  elsif board[index] == "X" || board[index]== "O"
    return true
  else
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(number)
  number=number.to_i
  index=number-1
end

def move(board, choice, player="X")
  board[choice]=player
end
