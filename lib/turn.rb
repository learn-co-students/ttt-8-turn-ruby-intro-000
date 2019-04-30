def turn(board)
  #display_board(board)
  puts "Please Enter 1-9"
  index = input_to_index
  if valid_move?(board, index) == true
    move(board, index)
  elsif valid_move?(board, index) == false || valid_move?(board, index) == nil
    puts "Invalid move. Please Enter 1-9"
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input = gets.strip)
  index = user_input.to_i
  index = index - 1
  return index
end

def move (board, index, value = "X")
  board[index] = value
  display_board(board)
end

def position_taken?(board, index)
  if board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  elsif board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return nil
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false
    return true
  elsif position_taken?(board, index) == true
    return false
  elsif position_taken?(board, index) == nil
    return nil
  end
end
