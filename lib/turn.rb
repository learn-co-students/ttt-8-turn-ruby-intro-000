#code the turn method here to create a procedure to make a turn in game.
def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
    
  valid_input = valid_move?(board, index)
  if valid_input == true
      move(board, index, "X")
      display_board(board)
  else
    puts "please enter 1-9:"
    index = gets.strip
  end
end   

# code your display_board method here
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

  # code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index) == false && (index).between?(0, 8) == true
    return true
  else 
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if  board[index] == " " 
    return false
    
  elsif board[index] == "" 
    return false
    
  elsif board[index] == nil 
    return false
    
  else
    return true
  end
end

# code your input_to_inde method here
def input_to_index(user_input)
  index = user_input.to_i - 1
end

# code your move method here
def move(board, index, value="X")
  board[index] = value
  return board
end


