def position_taken?(board,index)
  if board[index.to_i] == " " || board[index.to_i] == "" || board[index.to_i] == nil
    false
  elsif board[index.to_i] == "X" || board[index.to_i] == "O"
    true
  end
end
def display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board,index)
  if index.to_i.between?(0,8) && !position_taken?(board,index)
    true
  elsif index.to_i.between?(0,8) && position_taken?(board,index)
    false
  end
end
def input_to_index(user_input = 0)
  return user_input.to_i - 1
end
def move(board,input_to_index,character="X")
  if valid_move?(board,input_to_index)
    board[input_to_index] = character
  else
    puts "invalid"
    turn(board)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  move(board,index)
  display_board(board)
end
