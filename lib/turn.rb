

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end

def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end
  
def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end
  
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  valid = valid_move?(board, input)
  if valid == true
      move(board, input, "X")
      display_board(board)
  else
    puts "please enter 1-9:"
    input = gets.strip
  end
end