# Define a method display_board that prints a 3x3 Tic Tac Toe Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  number_entered = user_input.to_i - 1
  return number_entered
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index.between?(0,8)
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
  return false
else
  return true
end
end

def turn(board)
  puts "Please enter 1-9:"
  answer = gets.chomp
  answer = input_to_index(answer)
  if valid_move?(board, answer)
    move(board, answer)
    puts display_board(board)
  else
    puts "Please enter 1-9:"
    turn(board)
end
end
