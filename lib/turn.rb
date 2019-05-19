def display_board(board)
  row = "-----------"
  board_displayed = (
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
  )
puts board_displayed
end

def position_taken? (board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  end
  return true
end


def valid_move? (board, index)
  if index < 0 || index > 8
    return false
  end
not_taken = position_taken?(board, index)
return !not_taken
end



def input_to_index(move)
  return move.to_i - 1
end

def move(board,index,player="X")
  board[index] = player
  return board
end

def turn(board)
  check = false
  until check == true
    puts "Please enter 1-9:"
    input =  gets.strip.to_i
    if input > 0 && input < 10
      check = true
    end
  end
  index = input_to_index(input)
  is_valid = valid_move?(board, index)

  if(is_valid)
    new_board = move(board, index)

    puts display_board(new_board)
    #return move(board, index)
  else
    turn(board)
  end
end
