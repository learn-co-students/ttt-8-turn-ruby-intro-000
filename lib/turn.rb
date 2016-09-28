# Helper methods go here
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = (input.to_i) - 1
end

def valid_move?(board, index)
  return (index >=0 && index <=8 && !position_taken?(board, index))
end

def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  elsif (board[index] != "" || board[index] != " " || board[index] != nil)
    return false
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, player="X")
  else
    puts "invalid"
    turn(board)
  end
  display_board(board)
end
