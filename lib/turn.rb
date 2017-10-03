
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
 unless user_input =~ /\d/
   return -1
 end
  input = user_input.to_i
  until input.between?(1,9) == true
    turn(board)
    input = user_input.to_i
  end
    index = input - 1
    return index
end

def valid_move?(board,index)
if position_taken?(board,index) == false && index.between?(0,8) == true
  return true
elsif index.between?(0,8) == false
  return false
end
end

def position_taken?(board,index)
 if board[index] == " " || board[index] == "" || board[index] == nil
   return false
 elsif board[index] == "X" || board[index] == "O"
   return true
 end
end

def move(board, index, char="X")
 board[index] = char
 return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  test_valid = valid_move?(board,index)

  if test_valid == true
      move(board,index)
      display_board(board)
  else
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
  end

end
