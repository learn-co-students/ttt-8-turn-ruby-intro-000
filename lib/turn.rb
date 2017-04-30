def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return !position_taken?(board, index) && index <= 8 && 0 <=index
end

def input_to_index(input)
  return input.to_i - 1
end

def position_taken?(board, index)
  return (!(board[index] == " " || board[index] == ""))
end

def move(board, index, player_char="X")
  board[index] = player_char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
