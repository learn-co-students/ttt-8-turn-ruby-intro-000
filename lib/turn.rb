board=[" "," "," "," "," "," "," "," "," "]

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
 index = user_input.to_i
 index = index - 1
end

def move(board, index, character = "X")
board[index] = character
end

def position_taken?(board, index)
  if  board[index] == "X" || board[index] == "O"
    return true
  else board[index] == " " || board[index] == "" || board[index] ==  nil
    return false
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
      return true
  else
      return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
