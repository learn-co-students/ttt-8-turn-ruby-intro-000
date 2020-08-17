def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  puts index
  if valid_move?(board, index) == true
    move(board, index, sign="X")
    display_board(board)
  else
   puts "your move is not valid, please try again"
   turn(board)
 end
end

#display_board passed
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#save in bin/turn, val = input_to_index(input) and it saves the outputs
#input_to_index passed
def input_to_index(input)
  index = input.to_i - 1   
end

#valid_move passed
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board,index)
end

def position_taken?(board, index) 
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

#move passed
def move(board, index, sign="X")
  board[index] = sign
end