board = [" "," "," "," "," "," "," "," "," "]
def display_board(rows)

  puts " #{rows[0]} | #{rows[1]} | #{rows[2]} "
  puts "-----------"
  puts " #{rows[3]} | #{rows[4]} | #{rows[5]} "
  puts "-----------"
  puts " #{rows[6]} | #{rows[7]} | #{rows[8]} "
end

def input_to_index(int)
  int.to_i - 1
end

def move(board, position, play="X")
  board[position] = play
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
       return false
  elsif board[index] == "X" || board[index] == "O"
  return true
else
puts "Don't Know"
end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
   return true
 else
   return false
 end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
