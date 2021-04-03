#display_board
def display_board(board=[" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move?
def valid_move?(board, index)
  if index.between?(0,8) && position_taken(board, index) == false or position_taken(board, index) == nil
    true
  elsif index.between?(0,8) && position_taken(board, index) == true
    false
  else index < 0 or index > 8
    false
  end
end

def position_taken(board,index)
  if board[index] == "" or board[index] == " " or board[index] == nil
    false
  else board[index] == "X" or board[index] == "O"
    true
  end
end

#move
def input_to_index(input)
input_to_index = input.to_i
index = input_to_index - 1
end

  def update_array_at_with(board, index, value)
  board[index] = value
  end

  def move(board, index, value="X")
  update_array_at_with(board, index, value)
  end

#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  move = valid_move?(board, index)
  if move == true
    move(board, index)
    display_board(board)
  else
    puts "Please enter 1-9:"
    turn(board)
  end
end
