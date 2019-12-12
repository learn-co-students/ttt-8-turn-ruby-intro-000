require "pry"
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)

  puts "Please enter 1-9:"
  input=gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
  move(board,index)
  display_board(board)
  else
  turn(board)
  end
end

def valid_move?(board,index)
index.between?(0,8) && !position_taken?(board,index)

end

def move(board,position,player = 'X')
board[position] = player
end

def input_to_index(user_input)
  puts"Where would you like to go?"
user_input.to_i - 1
end



def position_taken?(board,index)
  if board[index]==" " || board[index]=="" || board[index]==nil
    false
  else board[index]=="X" || board[index]=="O"
    true
end
end
