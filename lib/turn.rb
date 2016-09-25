def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " -----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " -----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def position_taken? (board, index)
  if (board[index] == " " || board[index] == "")
    return false
  elsif (board[index] == "X" || board[index] == "O")
    return true
  else
    return false
  end
end
def valid_move?(board, index)
  if(index.between?(0,8))
    if(position_taken?(board, index) == false)
      return true
    else
      return false
    end
  else
    return false
  end
end

def input_to_index (number)
  number = number.to_i
  number = number - 1
end

def move(board, index, value="X")
  board[index] = value
end
def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if(valid_move?(board, index) == true)
    move(board,index,value="X")
  else
        puts "Please enter a valid number"
        turn(board)
  end
  display_board(board)
end
