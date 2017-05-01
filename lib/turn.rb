def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken? (board,index_number)
  if board[index_number] == ""
    return false
  elsif board[index_number] == " "
    return false
  elsif board[index_number] == nil
    return false
  else
    return true
  end
end

# code your #valid_move? method here
def valid_move? (board, index_number)
  if index_number.between?(0,8) && !position_taken?(board, index_number)
    return true
  else
    return false
  end
end

def input_to_index(input)
input= "#{input}".to_i-1
end

def move(board,index,value="X")
  board[index]=value
end
board = [" ", " ", " "]
def update_array_at_with(board, index, value="X")
  board[index] = value
end

def turn(board)
 puts "Please enter 1-9:"
 i=gets.strip
 index_value=input_to_index(i)
 m=valid_move?(board, index_value)
 if m==true
   move(board,index_value,value="X")
 else m==false
   until m==true
     puts "Sorry, that was an invalid move. Please enter 1-9:"
     i=gets.strip
     index=input_to_index(i)
     m=valid_move?(board,index_value)
     move(board,index,value="X")
   end
 end
 display_board(board)
end
