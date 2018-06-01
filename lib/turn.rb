def turn (board)
  index=-1
  loop  do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)

    if valid_move?(board, index)
     break
    end
  end

  move(board, index)
  display_board(board)
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return index.between?(0,8) && !position_taken?(board,index)
end

def position_taken?(board, index)
  if board[index]== nil || board[index]==" " || board[index]==""
    return false
  end
  return true
end

def input_to_index(user_input)
   return user_input.to_i - 1
end

def move(board, board_index, value="X")
  board[board_index] = value
end

#A note:
# input = gets.strip
# index = input_to_index(input)
# move(board, index)
# display_board(board)
