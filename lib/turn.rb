#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move?
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  end
end

#position_taken?
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

#input_to_index
def input_to_index(user_input)
  index = user_input.to_i - 1
end

#move
def move(board, index, first_player = "X")
  board[index] = first_player
  return board
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
