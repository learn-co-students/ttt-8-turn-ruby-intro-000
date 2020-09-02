board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board,index)
  if(board[index] == " " || board[index] == "")
    return false
    elsif(board[index] ==nil)
    return false
  end
  true
end

def valid_move?(board,index)
  index.between?(0,8) && !position_taken?(board,index)
end

def move(board,user_input,token = "X" )
  board[user_input] = token
end
  return
  
def turn(board)
  puts "Please enter 1-9:"
end
