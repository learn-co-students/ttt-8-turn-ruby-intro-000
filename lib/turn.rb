def input_to_index(index)
    index = (index.to_i) - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
=begin
def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || "O"
    return true
    puts "Sorry, this position has already been taken."
    turn(board)
  end
end
=end
def position_taken?(board, index)
if board[index] == "  " || board[index] == " "
 return false
 elsif board[index] == nil
   return false
 elsif board[index] == ""
   return false
 elsif board[index] == "X" || board[index] == "O"
   return true
 end
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end



def move(board, index, value = "X")
  board[index] = value
end
def turn(board)
  puts "Please enter 1-9:"
  input =gets.strip
  index = input_to_index(input)
    if index >=0 && index <=8
      position_taken?(board, index) == false
      valid_move?(board, index) == true
      move(board,index,"X")
      display_board(board)
    else turn(board)
    end
  end
